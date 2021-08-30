class Post < ApplicationRecord
  validates :content, presence: true, length: {minimum: 2}
  validates :image, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :favorites, dependent: :destroy
  has_many :favorites_users, through:  :favorites, source: :user
end
