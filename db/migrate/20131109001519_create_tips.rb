class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.timestamps
      t.integer :user_id
      t.integer :amount
    end
  end
end
