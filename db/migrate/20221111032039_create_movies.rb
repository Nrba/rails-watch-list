# frozen_string_literal: false

# This is a child class
class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :overview, null: false
      t.string :poster_url
      t.float :rating

      t.timestamps
    end
  end
end
