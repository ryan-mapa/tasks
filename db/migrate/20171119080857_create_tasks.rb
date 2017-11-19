class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :content
      t.integer :parent_id
      t.integer :author_id
      t.boolean :completed

      t.timestamps
    end
  end
end
