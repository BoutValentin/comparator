class CreateComparatorPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :comparator_posts do |t|
      t.string :title
      t.text :body
      t.text :abstract
      t.string :author

      t.timestamps
    end
  end
end
