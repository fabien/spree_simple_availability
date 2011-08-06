class AddAvailabilityToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :in_stock_status, :integer, :default => 0
    add_column :products, :out_of_stock_status, :integer, :default => 0
  end

  def self.down
    remove_column :products, :out_of_stock_status
    remove_column :products, :in_stock_status
  end
end
