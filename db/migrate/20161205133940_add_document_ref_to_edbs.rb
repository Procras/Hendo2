class AddDocumentRefToEdbs < ActiveRecord::Migration
  def change
    add_reference :edbs, :document, index: true, foreign_key: true
  end
end
