require 'rails_helper'

describe Proto do
  describe "validations" do
    it "title cant't be blank" do
      proto = build(:proto, title: nil)
      proto.valid?
      binding.pry
      expect(proto.errors[:title]).to include "can't be blank"
    end

    it "catch_copy cant't be blank" do
      proto = build(:proto, catch_copy: nil)
      proto.valid?
      expect(proto.errors[:catch_copy]).to include "can't be blank"
    end
  end
end
