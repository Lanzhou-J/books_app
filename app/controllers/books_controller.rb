class BooksController < ApplicationController
        skip_before_action :verify_authenticity_token
        before_action :setup_data
        @@new_data = nil
        def index
            if @@new_data != nil
              render json: @@new_data
            else
              render json: @data
            end
        end
    
        #Show a single book
        def show
            render json: @data[0]
        end
    
        #Create a new book
        def create
            title = params["article"]["title"] 
            author = params["article"]["author"]     
            render plain: "working"
            new_hash = {:title => title, :author => author}
            @data.push(new_hash)
            @@new_data = @data
        end
    
        #Update a book
        def update

        end
    
        #Remove a book
        def destroy
        end
    
        private
        def setup_data
            @data = [
                { title: "Harry Potter", author: "J.K Rowling" },
                { title: "Name of the wind", author: "Patrick Rothfuss" }
            ]
        end
end
