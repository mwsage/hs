class ChangePropertyImage < ActiveRecord::Migration
  def change
  	remove_column :properties, :image
  	add_attachment :properties, :image
  end
end
