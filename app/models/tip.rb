class Tip < ActiveRecord::Base
  belongs_to :user

  attr_accessible :amount
end
