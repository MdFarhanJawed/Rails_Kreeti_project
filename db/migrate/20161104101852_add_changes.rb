class AddChanges < ActiveRecord::Migration
  def change
  	change_column_null( :users, :email, false)
  	change_column_null( :users, :password_digest, false)
  	change_column_null( :transactions, :title, false)
  	change_column_null( :transactions, :price, false)
  	change_column_null( :accounts, :name, false)

  end
end
