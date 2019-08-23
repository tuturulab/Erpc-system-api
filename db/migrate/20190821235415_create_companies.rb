class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name, :limit => 20
      t.string :description, :limit => 255

      t.belongs_to :user

      t.timestamps
    end
  end
end
