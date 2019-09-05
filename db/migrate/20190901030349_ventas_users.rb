class VentasUsers < ActiveRecord::Migration[5.2]
  def change

    

    #One to many relationship
    add_reference :Venta, :users, index: true
  end
end
