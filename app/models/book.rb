class Book < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true
  validates :author, presence: true
  validates :title, :uniqueness => {:scope => [:author]}
end
