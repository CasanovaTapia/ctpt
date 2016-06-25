class StaticController < ApplicationController

  def home
    @ideas = Idea.all
  end

end
