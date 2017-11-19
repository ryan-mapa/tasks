class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :content, null: false
      t.integer :parent_id
      t.integer :author_id, null: false
      t.boolean :completed, default: false
      t.integer :children, array: true, default: []

      t.timestamps
    end

      add_index :tasks, :parent_id
      add_index :tasks, :author_id
  end
end
