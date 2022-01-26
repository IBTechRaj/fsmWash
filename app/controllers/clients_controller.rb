class ClientsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @client =Client.find_by(client.id: current_user.id)
    if @client.nil?
      @client = Client.new(client_params)
      if @client.save
        render json: {client: @client, message: "Booking successful"}
      else
        render @client.new
      end
    else
      render json: {message: "Client Already exists"}
    end
  end

  private

  def client_params
    params.require(:client).permit(:cname,  :address1, :address2, :location, :mobile, :user_id,
    booking_attributes: [ :bookingDate, :bookingTime, :client_id, :location ]
  )
  end

end
