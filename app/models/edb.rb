class Edb < ActiveRecord::Base
  has_many :documents
  has_many :beacons
  has_many :events
end
