class UsersController < ApplicationController

  def edit
  end

  if current_user.update(user_params)
    # 更新がうまく行った場合はルートパスへ
    redirect_to root_path
  else
    # うまく行かなかった場合は編集ページのまま
    render :edit
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end