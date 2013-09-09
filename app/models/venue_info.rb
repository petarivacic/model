class VenueInfo < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
