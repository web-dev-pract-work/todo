class TodoListController < ApplicationController

    def new
        @todo_list = TodoList.new
    end

    def create
        @todo_list = TodoList.new(todo_list_params)

        if @todo_list.save
            redirect_to @todo_list
        else
            render :new, status: :unprocessable_entity
        end
    end

    def index
        @todo_lists = TodoList.all
    end
    
    def show
       @todo_list = TodoList.find(params[:id])
    end


    private
        def todo_list_params
            params.permit(:title, :description)
        end

end
