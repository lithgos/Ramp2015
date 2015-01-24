class ChangeLastActiveFormatInUsers < ActiveRecord::Migration
  def change

    change_table :users do |t|
      t.remove :last_active
      t.integer :last_active
    end


  end
end

