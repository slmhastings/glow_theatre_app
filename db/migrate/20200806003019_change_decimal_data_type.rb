class ChangeDecimalDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :subtotal, :decimal, precision: 7, scale: 2
    change_column :bookings, :tax, :decimal, precision: 7, scale: 2
    change_column :bookings, :total, :decimal, precision: 7, scale: 2
  end
end
