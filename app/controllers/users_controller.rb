class UsersController < ApplicationController

    get '/users/signup' do 
        erb :'/users/signup'
    end

    post '/users/signup' do 
       #params[:username]
       #params[:password]
       newUser = {username: params['username'], password: params['password']}
      	User.create(newUser)
          erb :'welcome'
    end


end