class AddUserIdToTipCodes < ActiveRecord::Migration
  def change
    add_column :tip_codes, :user_id, :integer
  end
end
