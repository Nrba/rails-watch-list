# frozen_string_literal: false

# This is a child class
class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
