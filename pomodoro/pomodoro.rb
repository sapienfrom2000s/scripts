default_message = 'Time is up'
default_time = 3600

puts 'Enter time in seconds'
time = gets.chomp 
time = time.empty? ? default_time : time

puts 'Enter the message'
message = gets.chomp
message = message.empty? ? default_message : message

songs = {:sooraj_dooba_hai => 'gZL0pXq8c2s', :makhna => '5D8wwE4_3sE'}

puts "Pomodoro timer for #{time}s activated"

system("sleep #{time} && notify-send --expire-time=0 '#{message}' && mpv https://www.youtube.com/watch?v=#{songs.values.sample} &")

