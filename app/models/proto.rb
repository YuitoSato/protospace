class Proto < ActiveRecord::Base
  has_many :images
  accepts_nested_attributes_for :images

  def main_image
    Image.where(proto_id: id, status: 0)
  end

  def sub1_image
    Image.where(proto_id: id, status: 1)
  end

  def sub2_image
    Image.where(proto_id: id, status: 2)
  end
end
