# frozen_string_literal: false

# This is a child class
class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie_id, presence: true, uniqueness: { scope: :list_id, message: %(- already in the list) }
end
