class CreateFarmHasOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :farm_has_owners do |t|
      t.references :farm, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true
      t.decimal :percentage, precision: 13, scale:2

      t.timestamps
    end
  end
end
