class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end
  has_many :comments, dependent: :destroy
  has_many :commented_posts, through: :comments, source: :post
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  has_many :posts, dependent: :destroy
  has_many :posts, :through => :user_posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
end

