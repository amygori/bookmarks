class SiteController < ApplicationController
  def index
  	@bookmarks = Bookmark.order('created_at_desc')
  end
end
