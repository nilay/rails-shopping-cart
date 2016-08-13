require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "ActiveModel validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
  end

  describe "ActiveRecord associations" do
    it { should have_many(:order_lines) }
  end
end
