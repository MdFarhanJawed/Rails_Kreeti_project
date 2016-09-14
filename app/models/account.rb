class Account < ActiveRecord::Base
  belongs_to :user
  #has_many :transactions, through: :account_articles
  
validates :name, presence: true
validates_uniqueness_of :name
	
end
