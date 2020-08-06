class ChangeColumnDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :booking_id, 'integer USING CAST(booking_id AS integer)'
  end
end
