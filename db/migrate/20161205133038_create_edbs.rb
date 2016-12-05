class CreateEdbs < ActiveRecord::Migration
  def change
    create_table :edbs do |t|
      t.string :note
      t.integer :distance

      t.timestamps null: false
    end
  end
end
