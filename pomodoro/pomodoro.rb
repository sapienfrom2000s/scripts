require 'tty-prompt'
require_relative './songs.rb'

default_message = 'Time is up'
default_time = 3600

puts 'Enter time in seconds'
time = gets.chomp 
time = time.empty? ? default_time : time

puts 'Enter the message'
message = gets.chomp
message = message.empty? ? default_message : message

song_prompt = prompt = TTY::Prompt.new
song_prompt.yes? 'Do you want music to be played at the end of timer?'

puts "Pomodoro timer for #{time}s activated"

system("sleep #{time} && notify-send --expire-time=0 '#{message}' &")
system("sleep #{time} && mpv https://www.youtube.com/watch?v=#{songss.values.sample} &") if song_prompt

