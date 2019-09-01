class Area < ActiveRecord::Migration[5.2]
  def change
    create_table :Area do |t|
      t.string :nombreArea
      t.string :descripcion
      t.timestamps
      t.belongs_to :Empresa
    end
  end
end
