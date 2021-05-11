class SearchController < ApplicationController
  
  def search
    @range = params[:range]
    @word = params[:word]

    if @range == "User"
      @users = User.looks(params[:search], @word )
    else
      @books = Book.looks(params[:search], @word )
    end
  end
  
  
end
