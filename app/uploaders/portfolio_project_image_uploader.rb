class PortfolioProjectImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  def store_dir
    "project-images/#{model.id}"
  end
  
  version :thumbnail do
    process :resize_to_fill => [232, 190]
    process :quality => 80
  end
end
