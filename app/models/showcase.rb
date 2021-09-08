class Showcase < ApplicationRecord
  validates :user_id, presence: true
  validates :tag_id, presence: true
  validates :title, presence: true
  
  belongs_to :user
  has_many :showcases
  belongs_to :tag
  
  has_many :favorites
end
