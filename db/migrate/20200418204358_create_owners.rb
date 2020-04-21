class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :fistName
      t.string :lastName
      t.string :documentNumber
      t.references :document_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
