class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy, inverse_of: :restaurant
  validates :name, uniqueness: true, presence: true
  validates :address,  presence: true
  validates :category, inclusion: { in: CATEGORIES }

end
