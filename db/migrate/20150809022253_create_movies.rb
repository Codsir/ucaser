class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.text :content
      t.string :label
      t.datetime :release_date
      t.string :user_id
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end
