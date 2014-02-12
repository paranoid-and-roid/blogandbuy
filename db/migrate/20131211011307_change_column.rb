class ChangeColumn < ActiveRecord::Migration
  def up
    change_column :reviews, :accepted, :boolean, :default => false
  end

  def down
  end
end
