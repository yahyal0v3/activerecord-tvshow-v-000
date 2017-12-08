require 'pry'

class Show < ActiveRecord::Base
  binding.pry
  def self.highest_rating
    Show.maximum
  end
end
