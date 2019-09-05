class CreateVenta < ActiveRecord::Migration[5.2]
  def change
    create_table :venta do |t|

      t.timestamps
    end
  end
end
