class User < ActiveRecord::Base
  include Clearance::User

  has_one :tip_code

  before_create { |user| user.build_tip_code }
end
