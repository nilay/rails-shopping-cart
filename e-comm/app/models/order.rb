class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_lines

  before_save :update_total
  validates :order_no, :user_id, :presence => true
  def total
    order_lines.collect { |oi| oi.valid? ? (oi.qty * oi.unit_price) : 0 }.sum
  end

  private

  def update_total
    self[:total] = total
  end
end
