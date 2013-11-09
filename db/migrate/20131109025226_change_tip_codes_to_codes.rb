class ChangeTipCodesToCodes < ActiveRecord::Migration
  def up
    rename_table :tip_codes, :codes
  end

  def down
    rename_table :codes, :tip_codes
  end
end
