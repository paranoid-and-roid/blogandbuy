class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :film_id
      t.integer :user_id
      t.text :post
      t.boolean :accepted

      t.timestamps
    end
  end
end
