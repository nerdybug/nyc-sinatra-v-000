class FiguresController < ApplicationController

  get '/figures' do
    erb :'figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    if !params[:landmark][:name].empty?
<<<<<<< HEAD
      @figure.landmarks << Landmark.create(name: params[:landmark][:name])
    elsif !params[:title][:name].empty?
      @figure.titles << Title.create(name: params[:title][:name])
=======
      @figure.landmarks << Landmark.find_or_create_by(name: params[:landmark][:name])
    elsif !params[:title][:name].empty?
      @figure.titles << Title.find_or_create_by(name: params[:title][:name])
>>>>>>> b08c07d419e027728076727b1a8904bebe78dec9
    end
    redirect '/figures'
  end

  get '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find_by(id: params[:id])
<<<<<<< HEAD
    erb :'figures/edit'
  end

  patch '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    @figure.name = params[:figure][:name] if params[:figure][:name]
    @figure.title_ids = params[:figure][:title_ids] if params[:figure][:title_ids]
    @figure.landmark_ids = params[:figure][:landmark_ids] if params[:figure][:landmark_ids]

    if !params[:landmark][:name].empty?
      @figure.landmarks << Landmark.create(name: params[:landmark][:name])
    elsif !params[:title][:name].empty?
      @figure.titles << Title.create(name: params[:title][:name])
    end

    @figure.save
    redirect "/figures/#{@figure.id}"
=======
    binding.pry
    erb :'figures/edit'
  end

  post '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    # binding.pry
>>>>>>> b08c07d419e027728076727b1a8904bebe78dec9
  end
end
