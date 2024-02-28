class RenameAvatarColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    rename_column :rooms, :avatar, :room_image
  end
end
