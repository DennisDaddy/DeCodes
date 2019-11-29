class Post < ApplicationRecord
  belongs_to :category
  default_scope -> { order(created_at: :desc) }
  validates :title, :content, presence: :true
end
