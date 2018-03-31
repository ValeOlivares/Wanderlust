class Post < ApplicationRecord
    has_many :comments, dependents: :destroy
    validates :title, presence: true, length: {minimum: 5}
    validates :body, presence:true
end
