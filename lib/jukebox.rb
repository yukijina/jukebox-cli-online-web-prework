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
  songs.map.each_with_index do |song, index|  
    puts "#{index+1}. #{song}"
  end
end



def play(songs)
  #puts "Please enter a song name or number:"
  gets.chomp 
  user_input = gets.chomp
  output = nil
 
  songs.each_with_index do |song, index|
    num = index +1
    if user_input == num || user_input.include?(song)
      output = "Playing #{song}"
    elsif user_input != num || user_input != song
      output = "Invalid input, please try again"
    end
  end
  puts "#{output}"
end
  


