class Song
  
  @@count = 0
  @@artists = []
  @@genres = []

    def self.count=(count)
    @count = count
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    return { }
  end

# ASK FOR HELP. vvv what is this?

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  # ^^^ don't understand this yet. same goes for to-be-written .genre_count deliverable. ^^^

  







  def self.genre_count
    genre_count = {}    
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    return genre_count
  end



















  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
    
  end

  def name
   return @name
  end
 
  def artist
   return @artist
  end
  
  def genre
    @genre
  end

  def count
    @count
  end

end