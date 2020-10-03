class RelationshipsController < ApplicationController


  def create
    @user = User.find(params[:user_id])
    @relationship = current_user.relationships.new(followed_user_id: @user.id)
    @relationship.save
    redirect_to request.referer
  end

  def destroy
    @user = User.find(params[:user_id])
    @relationship = current_user.relationships.find_by(followed_user_id: @user.id)
    @relationship.destroy
    redirect_to request.referer
  end


end
