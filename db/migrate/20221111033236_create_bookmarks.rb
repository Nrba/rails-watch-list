# frozen_string_literal: false

# This is a child class
class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :comment, null: false
      t.references :list, :movie, foreign_key: true

      t.timestamps
    end
  end
end
