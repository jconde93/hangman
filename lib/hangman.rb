require_relative 'helper'

display_main_menu

case main_menu_input
when "1" # new game
  word = pick_word
  lives = 9
  play word, 9
when "2" # load game
  #TODO
when "3" # how to play
  #TODO
when "4" # exit
  puts "\nExiting Program"
end
