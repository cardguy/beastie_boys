class ArtistAlbums

  def initialize
  end

  def list
    @list = {
     "1986" => "Licensed to Ill",
     "1989" => "Paul's Boutique",
     "1992" => "Check Your Head",
     "1994" => "Ill Communication",
     "1998" => "Hello Nasty",
     "2004" => "To the 5 Boroughs",
     "2007" => "The Mix-Up",
     "2011" => "Hot Sauce Committee Part Two",
    }
  end


  def albums
    list.values
  end

  def year
    list.keys
 end

  def first
    list.values.first
  end

  def first_k
    list.keys.first
  end

  def last
    list.values.last
  end

  def last_k
    list.keys.last
  end

  def count
    list.count
  end

  def missing
    delivered = list.keys.collect{|x| x.to_i}
    range = (delivered[0]..Time.now.year).to_a
    range - delivered
  end

  def next
    list.values.next

  end

 end
