Requirements:

  libnotify-bin -> for displaying notification\
  mpv -> for playing music\
  bundler -> to install gems\
  ruby -> program is written in it

How to add new songs:

  Right now, music is played from youtube. So, video id is needed. Go
  to `song.rb` file and add video id along with its title. It looks
  like `{title => 'id1',.....}`. Add your title and id to it. You are 
  good to go.

How to install?

1. Run `bundle install`
2. cd into the main directory  
3. Run 'ruby pomodoro.rb'

