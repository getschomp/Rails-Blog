class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |table|
      table.string :subject, null: false
      table.text :story, null: false

      table.timestamps
    end
  end
end
