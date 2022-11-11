# frozen_string_literal: false

# This is a child class
class Movie < ApplicationRecord
  url_regex = %r(^(http|https)://[a-z0-9]+([\-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?/.*)?$)ix
  validates :title, :overview, presence: true, uniqueness: { case_sensitive: false }
  validates :rating, numericality: { only_float: true, in: 0..10 }
  validates :poster_url, format: { with: url_regex }
end
