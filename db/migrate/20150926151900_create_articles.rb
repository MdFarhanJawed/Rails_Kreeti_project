class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titles
    end
  end
end
