# Provides basic date utils
class DateUtils
  attr_reader :now

  def initialize(now = false)
    @now = now
  end

  def rand_time
    hour_low  = 9
    min_low   = 0

    if now
      now_dt = DateTime.now
      hour_low  = now_dt.hour
      min_low   = now_dt.minute
    end

    rand_dt = DateTime.now.beginning_of_day

    hour      = rand(hour_low..16) || hour_low
    min       = rand(min_low..59) || min_low

    rand_dt += 1.day unless now && now_dt.hour < 17
    rand_dt += hour.hours
    rand_dt + min.minutes
  end
end
