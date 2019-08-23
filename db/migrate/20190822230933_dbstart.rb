class Dbstart < ActiveRecord::Migration[5.2]
  def change 
    create_table :proveedor do |t|
      t.string :nombreProveedor
      t.string :lugar

      t.timestamps
    end
  end
end
