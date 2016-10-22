class ApiUsersController < ApplicationController
  before_action :set_api_user, only: [:show, :update, :destroy]

  # GET /api_users
  # GET /api_users.json
  def index
    @api_users = ApiUser.all

    render json: @api_users
  end

  # GET /api_users/1
  # GET /api_users/1.json
  def show
    render json: @api_user
  end

  # POST /api_users
  # POST /api_users.json
  def create
    @api_user = ApiUser.new(api_user_params)

    if @api_user.save
      render json: @api_user, status: :created, location: @api_user
    else
      render json: @api_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api_users/1
  # PATCH/PUT /api_users/1.json
  def update
    @api_user = ApiUser.find(params[:id])

    if @api_user.update(api_user_params)
      head :no_content
    else
      render json: @api_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api_users/1
  # DELETE /api_users/1.json
  def destroy
    @api_user.destroy

    head :no_content
  end

  private

    def set_api_user
      @api_user = ApiUser.find(params[:id])
    end

    def api_user_params
      params.require(:api_user).permit(:email, :password, :auth_token)
    end
end
