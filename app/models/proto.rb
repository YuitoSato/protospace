class Proto < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_many :likes
  accepts_nested_attributes_for :images
  acts_as_taggable_on :tags

  def like_user(user)
   likes.find_by(user_id: user.id)
  end
end
