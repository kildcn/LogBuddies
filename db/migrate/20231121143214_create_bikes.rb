class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|
      t.string :photo_url
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end
