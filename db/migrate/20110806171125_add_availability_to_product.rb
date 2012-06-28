class AddAvailabilityToProduct < ActiveRecord::Migration
  def self.up
    add_column :spree_products, :in_stock_status, :integer, :default => 0
    add_column :spree_products, :out_of_stock_status, :integer, :default => 0
  end

  def self.down
    remove_column :spree_products, :out_of_stock_status
    remove_column :spree_products, :in_stock_status
  end
end
