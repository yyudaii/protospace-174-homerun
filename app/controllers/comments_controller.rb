class CommentsController < ApplicationController
  def create 
    Comment.create(comment_params)
  end

  private
  def comment_params
  end


end
