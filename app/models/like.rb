class Like < ActiveRecord::Base
  belongs_to :proto, counter_cache: :likes_count
  belongs_to :user
end
