class Post < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  
  validates :content, presence: true
  validates :user_id, presence: true
  validates :title, presence: true
  validates :date, presence: true
end