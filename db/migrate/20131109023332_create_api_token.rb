class CreateApiToken < ActiveRecord::Migration
  def change
    create_table :api_tokens do |t|
      t.timestamps
      t.string :token, null: false
    end
  end
end
