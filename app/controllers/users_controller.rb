class UsersController < ApplicationController

  use Rack::Flash
  
  get '/signup' do
    erb :'users/create_user'
  end
end
