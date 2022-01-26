class AddLocationToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :location, :integer
  end
end
