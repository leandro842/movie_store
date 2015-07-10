Rails.application.routes.draw do
	get "movies/new" => "movies#new"
	get "movies" => "movies#index"
	post "movies" => "movies#create"
end