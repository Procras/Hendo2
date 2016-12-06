class AddDocumentIdToEdbs < ActiveRecord::Migration
  def change
    add_column :edbs, :document_id, :integer
    add_index :edbs, :document_id
  end
end
