class BookingsController < ApplicationController
  before_action :set_bike

  def new
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = @bike.bookings.new(booking_params)
    @booking.user = current_user

    if @booking.save
      # handle successful booking
      redirect_to bike_path(@bike), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  private

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :rental_status)
  end
end
