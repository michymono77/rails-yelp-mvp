class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, numericality: { less_than_or_equal_to: 5 }
  validates :content, presence: true
  # length: { minimum: 20}
end
