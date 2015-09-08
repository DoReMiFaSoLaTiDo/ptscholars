class Content < ActiveRecord::Base
  validates :url, presence: true
  validates :type, presence: true
  validates :name, presence: true
  validates :price, presence: true

  has_many :course_contents
  has_many :courses, through: :course_contents
end
