class AddColumToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :description, :string
    add_column :bikes, :brand, :string
    remove_column :bikes, :title, :string
  end
end
