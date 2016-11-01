class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = if params[:fb_id]
               User.find_by(fb_id: params[:fb_id])
             else
               User.all
             end
    render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render json: @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.find_or_initialize_by(fb_id: params[:fb_id]) do |user|
      user.first_name = params['user']['first_name']  ||  'Unknown'
      user.last_name  = params['user']['last_name']   ||  'Unknown'
      user.locale     = params['user']['locale']      ||  'Unknown'
      user.timezone   = params['user']['timezone']    ||  0
      user.gender     = params['user']['gender']      ||  'Unknown'
    end

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy

    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :fb_id, :first_name, :last_name,
      :locale, :timezone, :gender
    )
  end
end
