class Course < ApplicationRecord
  has_many :syllabuses, dependent: :destroy
end
