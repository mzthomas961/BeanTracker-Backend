class AddImageColumnToCoffeeTable < ActiveRecord::Migration[6.1]
  def change
    add_column :coffees, :image, :string
  end
end
