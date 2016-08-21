class Post < ActiveRecord::Base
  belongs_to :user
  #delegate :name, to: :user, prefix: true, allow_nil: true
  delegate :name, to: :user, allow_nil: true
  validates :title, presence: true
  validates :user, presence: true
end
