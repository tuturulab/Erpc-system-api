class Producto < ApplicationRecord

    self.table_name = "Venta"


    
    belongs_to :company

end
