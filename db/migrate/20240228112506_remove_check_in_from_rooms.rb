class RemoveCheckInFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :check_in, :datetime
  end
end
