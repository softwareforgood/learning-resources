class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :review_text
      t.references :book, null: false, foreign_key: true
      t.integer :rating, null: false

      t.timestamps
    end
  end
end
