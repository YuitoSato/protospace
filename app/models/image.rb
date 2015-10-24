class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  enum status: %i(main sub1 sub2)
  belongs_to :proto
end
