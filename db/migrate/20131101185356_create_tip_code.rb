class CreateTipCode < ActiveRecord::Migration
  def change
    create_table :tip_codes do |t|
      t.timestamps
    end
  end
end
