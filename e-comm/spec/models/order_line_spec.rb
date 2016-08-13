require 'rails_helper'

RSpec.describe OrderLine, type: :model do
  describe "ActiveModel validations" do
    it { should validate_presence_of(:product_id) }
    it { should validate_presence_of(:qty) }
  end

  describe "ActiveRecord associations" do
    it { should belong_to(:order) }
  end
end
