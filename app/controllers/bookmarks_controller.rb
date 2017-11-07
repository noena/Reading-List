class BookmarksController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @book = Book.find(params[:book_id])
    @bookmark = @book.bookmarks.create(bookmark_params)
    redirect_to book_path(@book)
  end

  private
    def bookmark_params
      params.require(:bookmark).permit(:page_number, :description)
    end
end
