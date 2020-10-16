class UsersController < ApplicationController

    get '/users/signup' do 
        erb :'/users/signup'
    end

    post '/users/signup' do 
       #params[:username]
       #params[:password]
       @users = User.create(username: params[:username], password: params[:password])
       redirect "/users/#{@users.id}"
    end
    
    get '/users/:id' do
       @users = User.find(params[:id])
       
       erb :'/users/show'
    end

end