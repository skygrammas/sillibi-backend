class Course < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :syllabuses, dependent: :destroy
  belongs_to :user
end
