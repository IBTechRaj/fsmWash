class BookingsController < ApplicationController
def index
    @bookings = Booking.all
    render json: @bookings
  end

  def show
    @booking=Booking.find(params[:id])
    render json: @booking
  end

  def new
    @booking = Booking.new(:appt_params)
  end

  def create
     @booking = Booking.new(appt_params)
    #  @appointment.user_id=current_user.id
      if @booking.save
        render json: @booking 
      else
        render json: @booking.errors, status: :unprocessable_entity
      end   
  end

  private

  def booking_params
    params.require(:booking).permit(:bookingDate, :bookingTppttime, :client_id)
  end
end
