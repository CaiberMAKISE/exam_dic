class Post < ApplicationRecord
    validates :software_name, presence: true
    validates :content, presence: true
end
