class Proto < ActiveRecord::Base
  belongs_to :user
  has_many :images, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :images
  acts_as_taggable_on :tags
  validates :title, :catch_copy, presence: true
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end
end
