class Dropped < ActiveRecord::Migration
  def change
  	drop_table :article_categories
  	drop_table :categories
  end
end
