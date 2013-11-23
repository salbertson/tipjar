class User < ActiveRecord::Base
  include Clearance::User

  has_one :code
  has_one :api_token
  has_many :tips

  before_create :build_code
  before_create :build_api_token

  validate :name, presence: true

  attr_accessible :name
end
