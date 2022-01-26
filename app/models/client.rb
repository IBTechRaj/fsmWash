class Client < ApplicationRecord
  has_many :bookings
  belongs_to :user

  accepts_nested_attributes_for :bookings

  after_create :create_booking

  def create_booking
    Booking.create(bookingDate: booking_date, bookingTime: booking_time, location: location, client_id: current_user.id)
  end
end