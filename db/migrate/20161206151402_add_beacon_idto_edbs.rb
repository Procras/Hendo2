class AddBeaconIdtoEdbs < ActiveRecord::Migration
  def change
    add_column :edbs, :beacon_id, :integer
    add_index :edbs, :beacon_id
  end
end
