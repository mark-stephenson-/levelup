# Describes the facebook user
class User < ActiveRecord::Base
  before_create :create_schedule

  has_one :schedule
  has_many :events

  def create_schedule
    build_schedule(next_send: DateUtils.new(true).rand_time)
  end
end
