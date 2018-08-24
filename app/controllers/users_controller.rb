class UsersController < ApplicationController
  def top
  end
  
  def top_recruit
  end
  
  def login_form
  end
  
  def login
      @user = User.find_by(email: params[:mail], password: params[:pass])
      if @user
          flash[:notice] = "ログインしました"
          redirect_to("/mypage")
      else
        @error_message = "メールアドレスまたはパスワードが間違っています"
        render("users/login_form")
      end
  end
end
