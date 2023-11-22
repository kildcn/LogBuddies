class AddAvailabilityDatesToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :availability_start_date, :date
    add_column :bikes, :availability_end_date, :date
  end
end
