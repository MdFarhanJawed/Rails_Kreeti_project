class Remove < ActiveRecord::Migration
  def change
  	
    remove_column :accounts, :ssl_enabled
  end
end

  end
end
