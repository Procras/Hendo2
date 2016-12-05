class AddNameToBeacon < ActiveRecord::Migration
  def change
    add_column :beacons, :name, :string
  end
end
