class Course < ApplicationRecord
  has_many :assignments
  has_many :syllabuses, dependent: :destroy
  belongs_to :user
end
