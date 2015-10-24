class Proto < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_many :likes
  accepts_nested_attributes_for :images
  acts_as_taggable_on :tags
end
