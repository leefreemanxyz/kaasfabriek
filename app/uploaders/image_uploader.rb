class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :index_size do
    eager
    resize_to_fill(326, 300, gravity = 'Center')
    cloudinary_transformation :quality => 80
  end
end
