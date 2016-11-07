namespace :notifications do
  desc 'manage daily notification'
  task send: :environment do
    schedules = Schedule.where('next_send < ?', DateTime.now)

    schedules.each do |schedule|
      # Send the update

      # Update next send time
      schedule.update_attributes(
        next_send: DateUtils.new.rand_time
      )
    end
  end
end
