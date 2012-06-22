require("./bbnew.rb")

@a = ArtistAlbums.new

loop do
  $stdout.write("'\n You're looking for?: all albums, first album,
last album, total albums, a specific year (use 4 digits), missing years, next, or quit?")
  answer = $stdin.gets.chomp
  break if answer == "quit"

  if answer == "all albums"
    $stdout.write("'\n' All albums released so far: #{@a.albums.to_s}'\n'")
  elsif answer == "first album"
    $stdout.write("'\n' Your band's first album was \"#{@a.first}\" in #{@a.first_k}'\n'")
  elsif answer == "last album"
    $stdout.write("'\n' Your band's last album was \"#{@a.last}\" in #{@a.last_k})'\n'")
  elsif answer == "total albums"
    $stdout.write("'\n' Your band has released #{@a.count} albums so far.'\n'")
  elsif answer == "missing"
    $stdout.write("'\n' Your band released no albums in the years #{@a.missing}.'\n'")
  else answer== "year"
   # index=0
   # @a.year.each do |x|
    # index=index.next

    # if answer == x
 # $stdout.write("'\n' Your band released no album that in #{answer}.'\n'")

      end
      end
