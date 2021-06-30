class Movie < ApplicationRecord
  validates :title, uniqueness: true
  validates :year, numericality: { greater_than: 1920 }
  validates :plot, length: { minimum: 6 }
end
