class Cliente < ActiveRecord::Migration[5.2]
  def change
    create_table :Cliente do |t|
      t.string :nombreCliente
      t.integer :telefono
      t.timestamps
      t.belongs_to :Empresa
    
    end
  end
end
