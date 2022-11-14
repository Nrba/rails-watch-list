# frozen_string_literal: false

# This is a child class
class Review < ApplicationRecord
  belongs_to :list
  validates :rating, presence: true
end
