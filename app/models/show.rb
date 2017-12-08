require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    self.select.(:name).order(rating: :desc).limit(1)
  end
end
