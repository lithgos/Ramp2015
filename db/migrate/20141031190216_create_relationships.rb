class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.boolean :favouritecontractor
      t.boolean :companyblockcontractor
      t.integer :contractor_id
      t.integer :company_id

      t.timestamps
    end
  end
end
