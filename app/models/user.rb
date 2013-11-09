class User < ActiveRecord::Base
  include Clearance::User

  has_one :code
  has_many :tips

  before_create { |user| user.build_code }

  validate :name, presence: true

  attr_accessible :name
end
