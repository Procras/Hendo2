class RemoveEventReftoEdbs < ActiveRecord::Migration
  def change
    remove_reference :edbs, :event, index: true, foreign_key: true
  end
end
