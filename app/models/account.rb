class Account < ActiveRecord::Base
has_many :account_articles
  has_many :articles, through: :account_articles
validates :name, presence: true
validates_uniqueness_of :name
	
end
