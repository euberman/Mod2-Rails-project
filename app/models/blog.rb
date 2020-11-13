class Blog < ApplicationRecord
  belongs_to :student
  has_many :likes, as: :media

  def student_name
    self.student.name
  end

  def student_cohort_id
    self.student.cohort_id
  end

  def likes_count
    self.likes.count
  end

  def has_current_student_liked_this
    self.likes.find_by(student_id: session[:student_id])
  end

  def self.most_popular

  end

  def self.recent_month
    self.all.where(:date.to_date => (Time.now - 30.day)..Time.now)
  end

  def self.recent_year
    self.all.where(:date.to_date => (Time.now - 365.day)..Time.now)
  end

  # Needs work <------------
  def blogs_from_current_student_cohort
    current_student ? current_student : Student.find(session[:student_id])
    result = self.all.select do |b|
      self.student_cohort_id == current_student.cohort_id
    end
    result
  end

  def time_since_now
    t_now = Time.now.to_i
    t_created = Time.new(Blog.first.date).to_i
    t_diff = (time_now - time_created) / 86400
    t_diff
    # time(time_created, time_now)
  end

end
