class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :label
      t.text :text

      t.timestamps null: false
    end
  end
end
