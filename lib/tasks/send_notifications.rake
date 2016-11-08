namespace :notifications do
  desc 'manage daily notification'
  task send: :environment do
    schedules = Schedule.where('next_send < ?', DateTime.now)

    schedules.each do |schedule|
      # Send the update
      msg = FbPostMessage.new
      code = msg.process!(
        recipient: schedule.user.fb_id,
        msg: 'message from rake'
      )
      if code == 200
        # Update next send time
        schedule.update_attributes(
          next_send: DateUtils.new.rand_time
          )
      end
    end
  end
end
