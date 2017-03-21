class Photo < ApplicationRecord
  belongs_to :product
  belongs_to :profile

  mount_uploader :image, ImageUploader
end
