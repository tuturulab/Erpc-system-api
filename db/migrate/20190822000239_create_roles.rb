class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name, :limit => 15
      t.string :description, :limit => 255

      t.belongs_to :company

      t.timestamps
    end
  end
end
