class Student < ApplicationRecord
  has_many :enrollments
  has_many :sections, through: :enrollments

  validates :name, presence: true
  validates :name, length: {minimum: 2}
  validates :name, uniqueness: true
end
