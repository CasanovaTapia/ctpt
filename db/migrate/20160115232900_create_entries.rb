class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :tagline
      t.text :body
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
