class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :author, null: false
      t.integer :rating, null: false
      t.string :headline, null: false
      t.text :body,  null: false
      t.references :product, null: false
      t.timestamps
    end
  end
end
