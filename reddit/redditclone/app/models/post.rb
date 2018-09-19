class Post < ApplicationRecord
  validates :user_id, :sub_id, :title, presence: true

  belongs_to :author,
  foreign_key: :user_id,
  class_name: :User
  belongs_to :sub
end
