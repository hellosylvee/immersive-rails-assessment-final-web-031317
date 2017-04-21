class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  belongs_to :user

  validates :rating, inclusion: { in: %w(1 2 3 4 5)},
    message: "%{rating} is not a valid rating" }
  end
end
