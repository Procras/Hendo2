class AddBeaconRefToEdbs < ActiveRecord::Migration
  def change
    add_reference :edbs, :beacon, index: true, foreign_key: true
  end
end
