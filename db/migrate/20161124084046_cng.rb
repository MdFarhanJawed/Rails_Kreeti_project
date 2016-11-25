class Cng < ActiveRecord::Migration
  def change
  	change_column :transactions,:price,:integer
  end
end
