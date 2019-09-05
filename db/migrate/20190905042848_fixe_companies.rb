class FixeCompanies < ActiveRecord::Migration[5.2]
  def change

    #remove_reference :Cliente_Empresa, :Empresa , index:true, foreign_key: true
    #remove_reference :Producto, :Empresa, index:true, foreign_key: true
    #remove_reference :Area, :Empresa, index:true, foreign_key: true

    #remove_column :Cliente_Empresa, :Empresa_id
    remove_column :Producto, :Empresa_id
    remove_column :Area, :Empresa_id

    drop_table :Empresa

    #add_reference :Cliente_Empresa, :Company, index: true
    add_reference :Producto, :Company, index: true
    add_reference :Area, :Company, index: true

  end
end
