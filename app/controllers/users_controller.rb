class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    user = User.new(user_params)
    user.save!

    redirect_to users_url, notice: '登録しました'
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :age,
      :height,
      :weight,
      :foobar
    )
  end
end
