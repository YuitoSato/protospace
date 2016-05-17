require 'rails_helper'

describe User do
  describe 'validations' do
    it "is invalid without username" do
      user = build(:user, username: nil)
      user.valid?
      expect(user.errors[:username]).to include "can't be blank"
    end

    it "is invalid without password"  do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include "can't be blank"
    end

    it "is invalid without email"  do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include "can't be blank"
    end

    it "is invalid with a password that has less than 7 characters" do
      user = build(:user, password: 111)
      user.valid?
      expect(user.errors[:password]).to include "is too short (minimum is 8 characters)"
    end

    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end
  end
end
