class AddGuestIdtoEdbguests < ActiveRecord::Migration
  def change
    add_column :edbguests, :guest_id, :integer
    add_index :edbguests, :guest_id
  end
end
