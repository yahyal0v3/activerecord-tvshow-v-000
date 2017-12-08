require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    self.order(name: :desc).limit(1)
  end
end
