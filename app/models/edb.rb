class Edb < ActiveRecord::Base
  belongs_to :document
  belongs_to :beacon
  belongs_to :event
  has_many :edbguests
end
