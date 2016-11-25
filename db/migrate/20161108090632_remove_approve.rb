class RemoveApprove < ActiveRecord::Migration
  def change
  	remove_column :transaction,:approve
  end
end
