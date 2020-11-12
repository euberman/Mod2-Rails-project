class Like < ApplicationRecord
  belongs_to :student
  belongs_to :video, optional: true
  belongs_to :blog, optional: true
end
