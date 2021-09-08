class Treasure < ApplicationRecord
  validates :user_id, presence: true
  validates :showcase_id, presence: true
  validates :image, presence: true
  validates :description, presence: true
  
  belongs_to :user
  belongs_to :showcase
  
  mount_uploader :image, ImageUploader
end
