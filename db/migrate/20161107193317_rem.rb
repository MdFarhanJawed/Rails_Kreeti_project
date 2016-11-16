class Rem < ActiveRecord::Migration
  def change
  	remove_column :transactions,:approvedby,:string
  	remove_column :transactions,:reference,:string

  end
end
