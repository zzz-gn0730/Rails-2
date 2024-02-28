class RemoveTotalFeeFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :total_fee, :decimal
  end
end
