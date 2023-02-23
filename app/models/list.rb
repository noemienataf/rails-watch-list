class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy # bookmark sont détruits si list détruite
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, presence: true
end
