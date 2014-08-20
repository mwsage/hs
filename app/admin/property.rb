ActiveAdmin.register Property do

form do |f|
  f.inputs "Property Details" do
    f.input :name
    f.input :rent
    f.input :occupancy
    f.input :beds
    f.input :parking, :as => :boolean
    f.input :image, :required => false, :as => :file
  end
  f.actions
end

show do |property|
  attributes_table do
    row :name
    row :rent
    row :occupancy
    row :beds
    row :parking
    row :image do
      image_tag(property.image.url)
    end
  end
  active_admin_comments
end

permit_params :name, :rent, :occupancy, :beds, :parking, :image

end
