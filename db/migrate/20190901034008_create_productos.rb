class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|

      t.timestamps
    end
  end
end
