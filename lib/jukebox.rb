songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  count = 1
  songs.each do |song|
    puts "#{count}. #{song}"
    count += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  songs.each_with_index do |song, index|
    if songs.include?(response)
      puts "Playing #{response}"
      break
    elsif response.to_i - 1 == index
      puts "Playing " + songs[index]
      break
    else
      puts "Invalid input, please try again"
      break
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  response = ""
  while response != "exit"
    puts "I accept the following commands:"
    response = gets.chomp
    case response
    when "play"
      play(song)
    when "list"
      list(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      puts "Invalid command, please try again"
    end
  end
end
