class Account < ActiveRecord::Base

  has_many :transactions, through: :account_articles
validates :name, presence: true
validates_uniqueness_of :name
	
end
