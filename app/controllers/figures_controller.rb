class FiguresController < ApplicationController

    get '/figures' do
        @figures = Figure.all
        erb :'figures/index'
    end

    get '/figures/new' do
        @landmarks = Landmark.all
        erb :'figures/new'
    end

    post '/figures' do
        @landmarks = Landmark.all
        @figure = Figure.create(params[:figure])
        redirect to("figures/#{@figure.id}")
    end

    get '/figures/:id' do
        @figure = Figure.find(params[:id])
        binding.pry
        erb :'figures/show'
    end

end
