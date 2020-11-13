class LikesController < ApplicationController

  def new 
    @like = Like.new
  end

  def create
    # prevent from liking for other users
    params[:like][:student_id] = current_student.id
    @like = Like.new(like_params)
    if @like.save
      flash[:success] = 'Thanks for liking!'
    else
      flash[:alert] = @like.errors.full_messages.join(', ')
    end
  end

  def destroy
    @like = current_student.likes.find(params[:id])
    @like.destroy
  end

  private
  
  def like_params
    params.require(:like).permit(:student_id, :media_id, :media_type)
  end
end
