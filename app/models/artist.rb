class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.name.gsub(/ /, '-').downcase
  end

  def self.find_by_slug(slug)
    array = slug.split('-')
    unslugged = array.map do |word|
      word.capitalize
    end.join(' ')
    Artist.find_by(name: unslugged)
  end

end
