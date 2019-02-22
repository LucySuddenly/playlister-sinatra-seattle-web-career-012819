class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :songs
  end

  get '/songs/new' do
    @artists = Artist.all
    @genres = Genre.all #for a dropdown
    erb :new
  end

  post '/songs' do

    if params[:artist_create]
      my_params = params.reject{|k, v| k == 'dropdown_artist'}
      my_params[:artist] = my_params.delete('artist_create')
      binding.pry
      y = Artist.create(name: my_params[:artist])
      x = Song.create(name: my_params["name"], artist_id: y.id)
    else
      my_params = params.reject{|k, v| k == 'artist_create'}
      my_params[:artist] = my_params.delete(:dropdown_artist)
      Song.create(my_params)
    end
    redirect '/songs'
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :song
  end

  get '/songs/:slug/edit' do
    erb :edit
  end

  patch 'songs/:slug' do
    song = Song.find_by_slug(params[:slug])

  end


end
