class Syllabus < ApplicationRecord
  belongs_to :course, counter_cache: true;
end
