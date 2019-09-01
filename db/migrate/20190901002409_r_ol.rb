class ROl < ActiveRecord::Migration[5.2]
  def change
    create_table :Rol do |t|
      t.string :nombreRol 
      t.timestamps
      t.belongs_to :Area
    end
  end
end
