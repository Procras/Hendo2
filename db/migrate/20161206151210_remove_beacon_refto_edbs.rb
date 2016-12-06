class RemoveBeaconReftoEdbs < ActiveRecord::Migration
  def change
    remove_reference :edbs, :beacon, index: true, foreign_key: true
  end
end
