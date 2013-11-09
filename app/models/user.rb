class User < ActiveRecord::Base
  include Clearance::User

  has_one :tip_code
  has_many :tips

  before_create { |user| user.build_tip_code }

  validate :name, presence: true

  attr_accessible :name
end
