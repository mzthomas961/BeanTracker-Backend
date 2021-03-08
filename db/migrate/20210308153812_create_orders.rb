class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.string :note
      t.integer :user_id
      t.integer :coffee_id

      t.timestamps
    end
  end
end
