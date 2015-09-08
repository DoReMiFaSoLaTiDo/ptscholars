class Course < ActiveRecord::Base
  has_and_belongs_to_many :packages

  has_many :course_contents
  has_many :contents, through: :course_contents
end
