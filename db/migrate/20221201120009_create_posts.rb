# frozen_string_literal: true

# Creation of posts table
class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :commentsCounter
      t.integer :likesCounter
      t.references :author, null: false, foreign_key: true, index: { unique: true, name: 'unique_authors' }

      t.timestamps
    end
  end
end
