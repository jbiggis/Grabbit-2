class AddColumnsToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :user_id, :integer
    add_column :orders, :deal_id, :integer
  end

  def self.down
    remove_column :orders, :deal_id
    remove_column :orders, :user_id
  end
end
