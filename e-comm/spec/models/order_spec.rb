require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "ActiveModel validations" do
    it { should validate_presence_of(:order_no) }
    it { should validate_presence_of(:user_id) }
  end

  describe "ActiveRecord associations" do
    it { should belong_to(:user) }
    it { should have_many(:order_lines) }
  end
end
