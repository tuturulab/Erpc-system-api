class Empresa < ActiveRecord::Migration[5.2]
  def change
    create_table :Empresa do |t|
      t.string :nombreEmpresa
      t.timestamps

    end
  end
end
