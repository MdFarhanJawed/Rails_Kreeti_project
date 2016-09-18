class AddApprovedbyToTransactions < ActiveRecord::Migration
  def change
  	add_column :transactions, :approvedby, :string
  end
end
