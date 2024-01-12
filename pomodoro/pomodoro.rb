require_relative './songs.rb'
require 'tty-prompt'

prompt = TTY::Prompt.new

prompt = prompt.collect do
  key(:time).ask('Time in seconds?', convert: :int, default: 3600)

  key(:message).ask('Message?', default: 'Time is up')

  key(:music).yes? 'Do you want music to be played at the end of timer?'
end

puts "Pomodoro timer for #{prompt[:time]}s activated"

system("sleep #{prompt[:time]} && notify-send --expire-time=0 '#{prompt[:message]}' &")
system("sleep #{prompt[:time]} && mpv https://www.youtube.com/watch?v=#{songss.values.sample} &") if prompt[:music]

