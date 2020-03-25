# Add your code here
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


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  songs.each do |listing|
    if response == listing
      puts "Playing #{listing}"
    else
      puts "Invalid input, please try again"
    end
  end
end


def list(songs)
  songs.each_with_index do |index, listing|
    puts "#{index+1}. listing"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  answer = gets.strip
  case answer
  when "list"
    list
  when "play"
    play
  when "help"
    help
  end
end
