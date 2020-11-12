class Video < ApplicationRecord
  belongs_to :student
  has_many :likes

  def student_name
    self.student.name
  end

  def time_since
    t_now = Time.now.to_i
    t_created = Time.new(self.date).to_i
    t_diff = (t_now - t_created) / 86400
    result = "#{t_diff} days ago"
  end

end
