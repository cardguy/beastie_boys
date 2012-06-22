require("./bbnew.rb")

@a = ArtistAlbums.new

loop do
  $stdout.write("'\n You're looking for?: all albums, first album,
 last album, total albums, a specific year (enter "year"), missing years, next, or quit?")
  answer = $stdin.gets.chomp
  break if answer == "quit"

  if answer == "all albums"
    $stdout.write("'\n' All albums released so far: #{@a.albums.to_s}'\n'")
  elsif answer == "first album"
    $stdout.write("'\n' Your band's first album was \"#{@a.albums.first}\" in #{@a.first_k}'\n'")
  elsif answer == "last album"
    $stdout.write("'\n' Your band's last album was \"#{@a.albums.last}\" in #{@a.last_k})'\n'")
  elsif answer == "total albums"

  elsif answer == "year"
    $stdout.write("'\n' enter a year using 4 digits, ie:1978'\n'")
   y = $stdin.gets.chomp
    @a.year(y)
  elsif answer == "count"
    $stdout.write("'\n' Your band has released #{@a.count} albums so far.'\n'")
  elsif answer == "missing"
    $stdout.write("'\n' Your band released no albums in the years #{@a.missing}.'\n'")

   end
 end
