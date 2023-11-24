class BookingsController < ApplicationController
  before_action :set_bike

  def new
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new
  end

  def create
    @bike = Bike.find(params[:bike_id])

    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike = @bike
    @booking.rental_status = "pending"
    start_date = params[:booking][:start_date].to_date
    end_date = params[:booking][:end_date].to_date
    duration_in_days = (end_date - start_date).to_i
    @booking.total_price = duration_in_days * @bike.price.to_i

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
    params.require(:booking).permit(:start_date, :end_date)
  end
end
