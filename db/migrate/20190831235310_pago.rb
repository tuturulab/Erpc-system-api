class Pago < ActiveRecord::Migration[5.2]
  def change
    create_table :Pago do |t|
      t.decimal :cuota, :precision => 4 , :scale => 3
      t.string :plazo
      t.belongs_to :Venta
    end
  end
end
