class CreateAdministers < ActiveRecord::Migration
  def change
    create_table :administers do |t|
      t.string :names
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
