class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :message
      t.datetime :created_time
      t.references :page

      t.timestamps null: false
    end
  end
end
