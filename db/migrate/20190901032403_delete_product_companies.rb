class DeleteProductCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :EmpresaProducto, :Empresa_id
    remove_column :EmpresaProducto, :Producto_id
    
    drop_table :EmpresaProducto

    add_reference :Producto, :Empresa, index: true

    #add_reference :Empleado, :users, index: true


    
  end
end
