class CreateFarms < ActiveRecord::Migration[6.0]
  def change
    create_table :farms do |t|
      t.string :name
      t.decimal :size, precision: 13, scale:2
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
