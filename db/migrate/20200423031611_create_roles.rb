class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :role_name
      t.text :role_description
      t.boolean :is_active

      t.timestamps
    end
  end
end
