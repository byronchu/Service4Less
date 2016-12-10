class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, ImageUploader

  mount_uploader :pic, ImageUploader
end
