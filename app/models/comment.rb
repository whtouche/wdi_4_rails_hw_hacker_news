class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  validates! :user, :commentable, presence: true
  validates :content, presence: true
end
