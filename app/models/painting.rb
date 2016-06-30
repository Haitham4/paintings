class Painting < ActiveRecord::Base
  #attr_accessible :title, :description, :image
  mount_uploader :image, ImageUploader
end
