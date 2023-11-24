class AddReviewsToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :review, :string
    add_column :bikes, :rating, :integer
    add_column :bikes, :renter, :string
  end
end
