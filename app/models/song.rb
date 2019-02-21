class Song < ActiveRecord::Base
  has_many :genres, through: :song_genres
  has_many :song_genres
  belongs_to :artist

  def slug
    self.name.gsub(/ /, '-').downcase
  end

  def self.find_by_slug(slug)
    array = slug.split('-')
    unslugged = array.map do |word|
      word.capitalize
    end.join(' ')
    Song.find_by(name: unslugged)
  end
end
