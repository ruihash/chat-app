class UsersController < ApplicationController

  def edit
  end
  #更新に成功するとチャット画面に遷移する
  #更新に失敗するとeditページに戻ってくる
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
