class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :ID
      t.text :description

      t.timestamps null: false
    end
  end
end
