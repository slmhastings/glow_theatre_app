class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :user_id
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total

      t.timestamps
    end
  end
end
