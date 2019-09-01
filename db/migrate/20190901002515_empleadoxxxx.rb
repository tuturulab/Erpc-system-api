class Empleadoxxxx < ActiveRecord::Migration[5.2]
  def change
    create_table :Empleado do |t|
      t.string :nombreEmpleado
      t.decimal :salario , :precision => 8, :scale => 4
      t.timestamps
      t.datetime :fechaContrato 
      t.belongs_to :Rol
    end
  end
end
