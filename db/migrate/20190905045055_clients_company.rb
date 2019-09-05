class ClientsCompany < ActiveRecord::Migration[5.2]
  def change

    remove_column :Cliente, :Empresa_id

    create_table :ClienteEmpresa do |t|

      t.belongs_to :Cliente
      t.belongs_to :Empresa

      t.timestamps
    end


  end
end
