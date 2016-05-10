require 'rails_helper'

describe User do
  describe '#create' do
    it "Username can't be blank" do
      user = build(:user, username: nil)
      user.valid?
      expect(user.errors[:username]).to include "can't be blank"
    end

    it "Password can't be blank"  do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include "can't be blank"
    end

    it "Email can't be blank"  do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include "can't be blank"
    end
  end
end
