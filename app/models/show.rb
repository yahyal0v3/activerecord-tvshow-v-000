require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    rating = self.highest_rating
    self.find_by(rating: rating)
  end

  def self.lowest_rating
    self.minimum("rating")
  end

  def self.least_popular_show
    rating = self.lowest_rating
    self.find_by(rating: rating)
  end

  def self.ratings_sum
    self.sum('rating')
  end

  def self.popular_shows
    self.order(rating: :desc).where("rating > ?", 5)
  end
end
