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

get '/tasks/:id/edit' do
    @tasks = Task.find(params[:id])
    erb :'/tasks/edit'

end 

#patch '/tasks/:id/' do
   # @tasks = Task.find(params[:id])
   # @tasks=Task.update(things_to_do: params[:things_to_do], notes:params[:notes])
        
   # redirect "/tasks/#{@tasks.id}"


#end
patch '/tasks/:id' do #edit action
    @tasks = Task.find(params[:id])
   @tasks.things_to_do = params[:things_to_do]
    @tasks.notes = params[:notes]
    
    @tasks.save
    redirect to "/tasks/#{@tasks.id}"
  end




#delete

delete '/tasks/:id' do #delete action
    @tasks = Task.find(params[:id])
    @tasks.delete
    redirect to '/tasks'
  end





end