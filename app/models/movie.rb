class Movie < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 140, minimum: 3 }
  validates :director, presence: true, length: { maximum: 50, minimum: 3 }
end
