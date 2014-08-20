class Property < ActiveRecord::Base
	# attr_accessible :name, :rent, :occupancy, :beds, :parking, :image, :avatar

	has_attached_file :image, :styles => { :mdium => "300x300", :thumb => "100x100"}, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
