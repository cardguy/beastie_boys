class Beastie_Boys

  def initialize
    @discog = {
      "Licensed to Ill" => 1986,
      "Paul's Boutique" => 1989,
      "Check Your Head" => 1992,
      "Ill Communication" => 1994,
      "Hello Nasty" => 1998,
      "To the 5 Boroughs" => 2004,
      "The Mix-Up" => 2007,
      "Hot Sauce Committee Part Two" => 2011,
    }
  end

  def albums
    @discog.each do |album, year |
      $stdout.write("#{album} #{year}\n")
    end
  end


  def year(year_val)
    @discog.each do |album, year |
      $stdout.write("#{album} #{year}\n") if year == year_val.to_i
    end
  end


  def next_album(year_next)
    @discog.each do |album, year|
     next if (year_next <= year)
      $stdout.write("#{album} #{year}\n")
      break
    end
  end


  $stdout.write("This is a Beastie Boys discography program\n\n")

 bb=Beastie_Boys.new

  loop do
    $stdout.write("Enter a year, albums, next or quit: ")
    answer = $stdin.gets.chomp
    $stdout.write("You said: #{answer}\n")


    if answer == "albums"
     bb.albums
    elsif answer == "next"
     bb.next_album(year.to_i)
    elsif answer == "quit"
      break
    else
      year == answer
      bb.year(answer)
    end
  end
end
