class Venta < ActiveRecord::Migration[5.2]
  def change
    create_table :Venta do |t|
      t.timestamps
      t.belongs_to :Cliente
    end
  end
end
