class Venta < ApplicationRecord
    self.table_name = "Venta"


    
    belongs_to :user
end
