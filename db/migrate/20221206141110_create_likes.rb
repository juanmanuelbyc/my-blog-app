# frozen_string_literal: true

# Creation of likes table
class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :author, null: false, foreign_key:{to_table: :users}, index: { name: 'likes_authors' }
      t.references :post, null: false, foreign_key: true, index: { name: 'likes_posts' }

      t.timestamps
    end
  end
end
