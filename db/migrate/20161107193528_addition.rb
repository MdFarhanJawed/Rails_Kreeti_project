class Addition < ActiveRecord::Migration
  def change
  	add_column :transactions,:approved_by,:integer
  	add_column :transactions,:approve,:string
  end
end
