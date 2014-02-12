class AddFilmnameToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :filmname, :string
  end
end
