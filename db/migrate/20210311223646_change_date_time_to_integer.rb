class ChangeDateTimeToInteger < ActiveRecord::Migration[6.1]
  def change
    change_table :orders do |t|
      t.change :date, :integer
    end
  end
end
