# Describes the facebook user
class User < ActiveRecord::Base
  before_create :build_schedule

  has_one :schedule
  has_many :events
end
