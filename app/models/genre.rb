class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    self.artists.collect 
    #=> => [#<Artist:0x0000000434ea50 id: 1, name: "MJ">,
 #<Artist:0x00000004363568 id: 2, name: "Adele">,
 #<Artist:0x0000000436d568 id: 3, name: "James Brown">]
    binding.pry
  end
end
