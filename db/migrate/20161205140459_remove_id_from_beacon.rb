class RemoveIdFromBeacon < ActiveRecord::Migration
  def change
    remove_column :beacons, :ID, :string
  end
end
