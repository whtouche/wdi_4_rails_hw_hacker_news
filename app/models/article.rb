class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :voteable, dependent: :destroy

  validates! :user, presence: true
  validates :url, :title, presence: true
  validates :url, format: { with: /\Ahttp/ }
end
