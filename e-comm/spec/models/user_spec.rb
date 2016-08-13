require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ActiveModel validations" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end

  describe "ActiveRecord associations" do
    it { should have_many(:orders) }
  end
end
