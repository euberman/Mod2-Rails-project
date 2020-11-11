class Student < ApplicationRecord
  belongs_to :cohort
  has_many :blogs
  has_many :videos
  has_many :likes

  def blog_count
    self.blogs.count
  end

  def videos_count
    self.videos.count
  end

  def likes_count
    self.likes.count
  end

  def cohort_location
    self.cohort.location
  end
end
