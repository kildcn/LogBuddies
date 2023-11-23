class Booking < ApplicationRecord
  # Associations
  belongs_to :bike
  belongs_to :user

  # Validations
  validates :start_date, :end_date, :total_price, :rental_status, presence: true
  validate :end_date_after_start_date

  # Custom validation method
  private
  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?
    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
