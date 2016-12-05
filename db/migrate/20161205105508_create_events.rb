class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :welcome_msg
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :note
      t.string :name

      t.timestamps null: false
    end
  end
end
