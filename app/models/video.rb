class Video < ApplicationRecord
  belongs_to :student
  has_many :likes

  def owner_name
    self.student.name
  end

  def time_since
    t_now = Time.now.to_i
    t_created = Time.new(Blog.first.date).to_i
    t_diff = (time_now - time_created) / 86400
    t_diff
    # time(time_created, time_now)
  end

end
