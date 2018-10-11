class Course < ApplicationRecord
  has_many :section

  validates :name, :credits, presence: true
  validates :name, length: {minimum: 2}

  validates :credits, format: {with: /[0-9-]/}
  validates :credits, numericality: {:greater_than_or_equal_to => 1, :less_than_or_equal_to => 6}
end
