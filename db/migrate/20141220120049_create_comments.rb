class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :relationship_id

      t.timestamps
    end
  end
end
