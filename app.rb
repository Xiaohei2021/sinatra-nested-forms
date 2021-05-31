require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end
    

    post '/pirates' do
      # binding.pry
      # @pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_data|
        Ship.new(ship_data)    
      end
      
      erb :'pirates/show'
    #  binding.pry
    end
    #

  end
end
