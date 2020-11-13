class Like < ApplicationRecord
  belongs_to :student
  belongs_to :media, polymorphic: true
  validates_presence_of :student, :media_id
  validates :student_id, uniqueness: { scope: [:media_id, :media_type] }


end
