class RemoveDocumentRefToEdbs < ActiveRecord::Migration
  def change
    remove_reference :edbs, :document, index: true, foreign_key: true
  end
end
