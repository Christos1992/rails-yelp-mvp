class Review < ApplicationRecord
RATINGS = [0, 1, 2, 3, 4, 5]
validates :content, presence: true
  validates :rating, inclusion: { in: RATINGS  }
  belongs_to :restaurant, inverse_of: :reviews
  validates  :rating, :numericality => {:only_integer => true}
  private

  # This is the target action
  def perform_some_actions
    # It is to be called while destroying a Child record
    # But must not be called while destroying the parent record
    unless self.parent.destroyed?

    end
  end
end
