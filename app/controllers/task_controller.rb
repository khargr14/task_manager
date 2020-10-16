class TaskController < ApplicationController

#create

    get '/tasks/new' do  # objests
        erb :'/tasks/new'
    end

    post '/tasks/new' do
       @task = @tast.create(things_to_do: params[:things_to_do], notes: params[:notes], due_date: params[:due_date] ) "process our form"
    end


#read



#update




#delete








end