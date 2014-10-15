class SiteController < ApplicationController
  def index
  	@bookmarks = current_user.bookmarks.order('created_at_desc')
  end
end
