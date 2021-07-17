class ProfilesController < ApplicationController
  
  def index
    @last_posts = Post.last(6)
  end

  def about  
  end

  def contact
    
  end
end
