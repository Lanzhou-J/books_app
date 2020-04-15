class BooksController < ApplicationController
        skip_before_action :verify_authenticity_token
        before_action :setup_data
        @@new_data = []
        def index
            if @@new_data != []
              render json: @@new_data
            else
              render json: @data
            end
        end
    
        #Show a single book
        def show
            id = params["id"].to_i
            if @@new_data == nil
              render json: @data[id]
            else
              render json: @@new_data[id]
            end
        end
    
        #Create a new book
        def create
            title = params["article"]["title"] 
            author = params["article"]["author"]     
            render html: "<h3>The book is successfully added!</h3>".html_safe
            new_hash = {:title => title, :author => author}
            if @@new_data != []
              @@new_data.push(new_hash)
            else
              @@new_data = @data
              @@new_data.push(new_hash)
            end
        end
    
        #Update a book
        def update
          render json: @@new_data
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
