require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating(column)
    Show.maximum(column)
  end
end
