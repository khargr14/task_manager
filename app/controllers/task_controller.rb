class TaskController < ApplicationController

#create

    get '/tasks/new' do  
        erb :'/tasks/new'
    end

    post '/tasks' do
       @tasks = Task.create(things_to_do: params[:things_to_do], notes:params[:notes], due_date:params[:due_date]) #"process our form"
       redirect "/tasks/#{@tasks.id}"
    end 

#read
get '/tasks/:id' do
    @tasks = Task.find(params[:id])
    erb :'/tasks/show'
end

get '/tasks' do
    @tasks = Task.all 
    erb :'/tasks/index'
end




#update




#delete







end