class User < ApplicationRecord
  before_validation { email.downcase! }
  mount_uploader :profile_image, ImageUploader
  validates :name, presence: true
  validates :email, presence: true, length: {minimum: 4}, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
            uniqueness: true
  validates :profile_image, presence: true
  has_many :posts
  has_many :favorites, dependent:  :destroy
  has_secure_password

end
