class RemoveDetailFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :detail, :text
  end
end
