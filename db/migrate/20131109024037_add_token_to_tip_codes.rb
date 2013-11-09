class AddTokenToTipCodes < ActiveRecord::Migration
  def change
    add_column :tip_codes, :token, :string
  end
end
