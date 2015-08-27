#TODO I have to call the save function somewhere in here

def play word, lives, guess_arr, loaded_working_map=""
  complete_word_map = word.chomp.split(//)

  if loaded_working_map == ""
    working_word_map = Array.new(complete_word_map.length,"_")
  else
    working_word_map = loaded_working_map
  end



  guess_error = false
  while working_word_map != complete_word_map and lives > 0
    if guess_error == true
      display_game lives, working_word_map, guess_arr, true
      guess_error = false
    else
      display_game lives, working_word_map, guess_arr
    end
    guess = get_letter


    if guess == "!"
      save_game lives, word, guess_arr, working_word_map
      break
    end

    if guess_arr.include?(guess)
      guess_error = true
    elsif complete_word_map.include?(guess)
      guess_arr.push guess
      complete_word_map.each_with_index do |letter,index|
        if letter.downcase == guess.downcase
          working_word_map[index] = guess
        end
      end
    else #not a correct word
      lives = lives - 1
      guess_arr.push guess
    end
  end

  if lives == 0
    puts "\nYOU LOST\n"
    puts "The word was #{complete_word_map.join}"
  end
  if complete_word_map == working_word_map
    puts "\nYou win the game\n"
    puts "The word was #{complete_word_map.join}"
  end
end

