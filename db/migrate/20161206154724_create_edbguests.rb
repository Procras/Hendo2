class CreateEdbguests < ActiveRecord::Migration
  def change
    create_table :edbguests do |t|
      t.string :note

      t.timestamps null: false
    end
  end
end
