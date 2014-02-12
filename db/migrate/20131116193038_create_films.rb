class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :actors
      t.text :description
      t.string :director
      t.string :filmname
      t.string :image_url
      t.string :length
      t.decimal :price, precision: 8, scale: 2
      t.integer :score
      t.string :release_year

      t.timestamps
    end
  end
end
