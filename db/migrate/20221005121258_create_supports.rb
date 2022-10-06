class CreateSupports < ActiveRecord::Migration[7.0]
  def change
    create_table :supports do |t|
      t.string :title, nil: false
      t.string :body, nil: false
      t.string :link, nil: false
      t.boolean :active, nil: false

      t.timestamps
    end
  end
end
