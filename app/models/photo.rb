class Photo < ApplicationRecord
  belongs_to :vehicle
  mount_uploader :picture, PictureUploader
end
