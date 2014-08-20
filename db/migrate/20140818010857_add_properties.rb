class AddProperties < ActiveRecord::Migration
  def change
  	create_table :properties do |t|
      t.string :name
      t.integer :rent
      t.integer :occupancy
      t.integer :beds
      t.boolean :parking
      t.string :image
 
      t.timestamps
  	end
	end
end
