class MoviesController < ApplicationController
	def new
		@movie = Movie.new
	end
	def index
		@movies = Movie.all
	end
	def create
		filtered = params.require(:movie).permit(:name, :price, :year, :description)
		@movie = Movie.new(filtered)
		@movie.save
		@movies = Movie.all
		render :index
	end
end