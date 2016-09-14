class Transaction < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :account_articles
  has_many :accounts, through: :account_articles
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :user_id, presence: true
  validates :price,presence: true
end