class Location < ActiveRecord::Base
  has_many :events
  has_many :categories,  -> { distinct }, through: :events
end
