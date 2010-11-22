class RemoveColumnsFromCoupons < ActiveRecord::Migration
  def self.up
    remove_column :coupons, :user_id
    remove_column :coupons, :deal_id
  end

  def self.down
    add_column :coupons, :deal_id, :integer
    add_column :coupons, :user_id, :integer
  end
end
