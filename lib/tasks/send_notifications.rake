namespace :notifications do
  desc 'manage daily notification'
  task send: :environment do
    schedules = Schedule.where('next_send < ?', DateTime.now).where(schedule_on: true)

    schedules.each do |schedule|
      # Get random message
      msgstock = MessageStock.order('RANDOM()').first
      puts msgstock.text.green
      # Send the update
      msg = FbPostMessage.new
      puts msg
      puts "recipient: #{schedule.user.fb_id}"
      puts "msg: #{msgstock.text}"
      processed = msg.process!(
        recipient: schedule.user.fb_id,
        msg: msgstock.text
      )
      puts processed
      schedule.update_attributes(
        next_send: DateUtils.new.rand_time
      )
    end
  end
end
