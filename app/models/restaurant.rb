class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  # format: { with: /\d{2}-\d{2}-\d{2}-\d{2}-\d{2}/, message: "" }
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES }
end
