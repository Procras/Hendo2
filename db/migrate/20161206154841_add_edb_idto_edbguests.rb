class AddEdbIdtoEdbguests < ActiveRecord::Migration
  def change
    add_column :edbguests, :edb_id, :integer
    add_index :edbguests, :edb_id
  end
end
