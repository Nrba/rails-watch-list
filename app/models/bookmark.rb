# frozen_string_literal: false

# This is a child class
class Bookmark < ApplicationRecord
  belongs_to :movie, :list
  validates :movie, :list, presence: true, uniqueness: { scope: %i[movie list] }
  validates :comment, length: { minimum: 6 }
end
