class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :booking_id
      t.string :card_number
      t.string :exp_date
      t.string :cvc

      t.timestamps
    end
  end
end
