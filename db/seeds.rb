a = Artist.create(name: "Taylor Swift")
b = Artist.create(name: "Mariah Carey")
c = Artist.create(name: "Ariana Grande")
d = Artist.create(name: "Garbage")
e = Artist.create(name: "Nirvana")
f = Artist.create(name: "Panic! at the Disco")

g = Song.create(name: "Love Story")
h = Song.create(name: "YMCA")
i = Song.create(name: "Eleanor Rigby")
j = Song.create(name: "Thank u next")
k = Song.create(name: "Zombie")
l = Song.create(name: "Hello")

m = Genre.create(name: "Pop")
n = Genre.create(name: "Rock")

g.artist = a
h.artist = b
i.artist = c
j.artist = d
k.artist = e
l.artist = f

g.song_genres.build(genre: m)
h.song_genres.build(genre: m)
i.song_genres.build(genre: m)
j.song_genres.build(genre: n)
k.song_genres.build(genre: n)
l.song_genres.build(genre: n)

g.save
h.save
i.save
j.save
k.save
l.save
