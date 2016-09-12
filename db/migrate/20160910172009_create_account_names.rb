class CreateAccountNames < ActiveRecord::Migration
  def change
    add_column :articles, :accountname, :string

    end
  end

