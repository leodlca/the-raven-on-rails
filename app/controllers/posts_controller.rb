class PostsController < ApplicationController

    def new

        @post = Post.new

    end

    def create

        @post = Post.new params.require(:post).permit :user_name, :text

        if @post.save

            flash[:notice] = "Your post was successfully created!"
            redirect_to root_url

        else

            render :new

        end

    end

    def search

        input = params[:text]
        @posts = Post.where "text like ?", "%#{input}%"

        render :search

    end

end
