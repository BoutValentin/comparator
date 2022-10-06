class CreateComparatorPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :comparator_posts do |t|
      t.string :title, nil: false
      t.text :body, nil: false
      t.text :abstract, nil: false
      t.string :author, nil: false

      t.timestamps
    end
  end
end
