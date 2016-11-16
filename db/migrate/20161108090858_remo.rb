class Remo < ActiveRecord::Migration
  def change
  	remove_column :transactions,:approve,:string
  end
end
