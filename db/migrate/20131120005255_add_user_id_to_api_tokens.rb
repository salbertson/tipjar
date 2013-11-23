class AddUserIdToApiTokens < ActiveRecord::Migration
  def change
    add_column :api_tokens, :user_id, :integer
  end
end
