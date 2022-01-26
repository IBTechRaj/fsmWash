class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :bookingDate
      t.datetime :bookingTime
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
