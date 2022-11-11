# frozen_string_literal: false

# This is a child class
class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
