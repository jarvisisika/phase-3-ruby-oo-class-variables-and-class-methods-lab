class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    attr_reader :name , :artist , :genre

    def initialize(name , artist ,genre)
        @@count += 1
        @@artists << artist
        @@genres << genre
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

   def self.genres
        @@genres.uniq
   end

   def self.genre_count
    @@genre_count = Hash.new(0)
    @@genres.map { |genre| @@genre_count[genre] += 1 }
    @@genre_count
  end

  def self.artist_count
    @@artist_count = Hash.new(0)
    @@artists.map { |artist| @@artist_count[artist] += 1 }
    @@artist_count
  end
  
end