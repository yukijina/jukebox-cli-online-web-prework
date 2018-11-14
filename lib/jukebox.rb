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



def list(songs)
  idx = []
  song_list = []
  songs.map.each_with_index do |song, index|  
    puts "#{index+1}. #{song}"
    idx << index+1
    song_list << song
  end
  idx
  song_list
end



def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp 
  list(user_input)
  if user_input == idx || user_input == song_list
    puts "Playing #{song_list}"
  else 
    puts "Invalid input, please try again"
  end
end
  


