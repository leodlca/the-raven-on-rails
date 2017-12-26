class Post < ApplicationRecord

    validates :user_name, length: {minimum: 4, maximum: 18}
    validates :text, length: {minimum: 3, maximum: 250}

end
