class Post < ApplicationRecord
    validates :software_name, presence: true, length: { maximum: 20 }
    validates :content, presence: true, length: { maximum: 1000 }
end
