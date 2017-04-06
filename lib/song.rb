require 'pry'

class Song

  attr_accessor :name, :artist, :genre
    # binding.pry
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    uniq_genres = @@genres.uniq
  end

  def self.artists
    uniq_artists = @@artists.uniq
  end

  def self.genre_count
    h = Hash.new 0
    binding.pry
    @@genres.each {|song| h[song] += 1}
    h
  end

  def self.artist_count
    h = Hash.new 0
    @@artists.each {|song| h[song] += 1}
    h
  end

end
