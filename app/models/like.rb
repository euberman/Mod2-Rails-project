class Like < ApplicationRecord
  belongs_to :student
  belongs_to :video, optional: true
  belongs_to :blog, optional: true

  validates :student_id, uniqueness: { scope: [:reference_id, :reference_type] }

  def video?

  end

  def blog?

  end
end
