class AddEventIdtoEdbs < ActiveRecord::Migration
  def change
    add_column :edbs, :event_id, :integer
    add_index :edbs, :event_id
  end
end
