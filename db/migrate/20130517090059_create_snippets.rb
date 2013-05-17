class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :name
      t.integer :category_id
      t.text :code

      t.timestamps
    end
  end
end
