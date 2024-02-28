class RemoveAvatarFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :avatar, :string
  end
end
