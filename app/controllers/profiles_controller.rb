class ProfilesController < ApplicationController

  def index
    @last_posts = Post.last(6)
    @projects = Project.all
  end

  def about
  @skills = Skill.all
  @projects = Project.all.order(:created_at)
  end
  
end
