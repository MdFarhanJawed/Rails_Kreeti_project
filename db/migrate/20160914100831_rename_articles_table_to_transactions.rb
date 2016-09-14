class RenameArticlesTableToTransactions < ActiveRecord::Migration
  def change
  	rename_table :articles, :transactions
  end
end
