class Edbguest < ActiveRecord::Base
  belongs_to :guest
  belongs_to :edb
end
