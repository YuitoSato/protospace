class AddLikesCountToProtos < ActiveRecord::Migration
  def change
    add_column :protos, :likes_count, :integer
  end
end
