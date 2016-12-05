class Edb < ActiveRecord::Base
  has_many :documents
  has_many :beacons
end
