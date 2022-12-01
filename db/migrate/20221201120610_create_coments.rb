class CreateComents < ActiveRecord::Migration[7.0]
  def change
    create_table :coments do |t|
      t.text :text
      t.references :author, null: false, foreign_key: true, index: { unique: true, name: 'unique_authors' }
      t.references :post, null: false, foreign_key: true, index: { unique: true, name: 'unique_posts' }

      t.timestamps
    end
  end
end
