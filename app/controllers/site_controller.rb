class SiteController < ApplicationController
  def search
    # @term = params[:term]
    # @artist = Artist.find_by(name: params[:term])
    # @artists = Artist.where("name LIKE '%#{params[:term]}%'")
    # if params[:term].nil?
    # unless params[:term].nil?
    #   @artists = Artist.where("name like ?", "%#{params[:term]}%")
    #   end
    artists = Artist.where("name like ?", "%#{params[:term]}%")#search for artist
    albums = Album.where("name like ?", "%#{params[:term]}%")#search for albums
    labels = Label.where("name like ?", "%#{params[:term]}%")#search for labels
    @results = artists + albums + labels
    end
end
