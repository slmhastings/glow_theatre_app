class ChangeCvcDataToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :cvc, 'integer USING CAST(cvc AS integer)'
  end
end
