class AddNameAgeSexMaxRentMinMoveInMaxMoveOutMaxTravelTimeImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :sex, :string
    add_column :users, :max_rent, :integer
    add_column :users, :min_move_in, :date
    add_column :users, :max_move_out, :date
    add_column :users, :max_travel_time, :integer
    add_column :users, :image, :string
  end
end
