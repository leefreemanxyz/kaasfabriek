class Photo < ApplicationRecord
  belongs_to :product
  belongs_to :profile

  validates :profile, presence: true, allow_nil: true

  mount_uploader :image, ImageUploader
end
