class ChangeIntegerToString < ActiveRecord::Migration[6.1]
  def change
    change_table :orders do |t|
      t.change :date, :string
    end
  end
end
