class UserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|
      
      t.belongs_to :user
      t.belongs_to :role

      

      t.timestamps
    end
  end
end
