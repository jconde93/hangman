def display_main_menu error=false
  system('clear') or system('cls')
  puts "=================HANGMAN================="
  puts "\n1. new game"
  puts "2. load game"
  puts "3. how to play"
  puts "4. exit"

  unless error
  print "\n\n>> "
  end
end

