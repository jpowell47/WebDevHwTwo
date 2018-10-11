class Section < ApplicationRecord
  belongs_to :course
  has_many :enrollments
  has_many :students, through: :enrollments

  validates :number, :semester, :course, presence: true
  validates :number, length: {minimum: 1}

  validates :semester, length: {minimum: 2}

  def numsem
    "#{course.name} #{number} #{semester}"
  end
end
