class Like < ActiveRecord::Base
  belongs_to :proto
  belongs_to :user
end
