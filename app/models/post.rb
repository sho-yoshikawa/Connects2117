class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :likes
    has_many :liked_users, through: :likes, source: :user
    has_many :comments, dependent: :destroy
    has_many :commented_users, through: :comments, source: :user
    has_many :posts, :through => :user_posts
end
