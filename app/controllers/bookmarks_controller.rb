class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end



  def new
    @bookmark = Bookmark.new
    @list = List.find(params: [:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmark_path(@bookmark)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
