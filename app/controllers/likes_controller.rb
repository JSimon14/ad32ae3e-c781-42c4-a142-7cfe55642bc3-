class LikesController < ApplicationController
  before_action :set_dog

  def create
    @dog.likes.create(user_id: current_user.id)
    redirect_to dogs_path(@dog)
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

end
