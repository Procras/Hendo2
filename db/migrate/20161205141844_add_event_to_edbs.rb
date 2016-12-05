class AddEventToEdbs < ActiveRecord::Migration
  def change
    add_reference :edbs, :event, index: true, foreign_key: true
  end
end
