class ApplicationController < ActionController::Base
  # サインイン後のリダイレクト先をマイページへ
  def after_sign_in_path_for(resource)
    flash[:notice] = "ログインに成功しました" #　 <-任意で
    root_path  #　指定したいパスに変更
  end

  # サインアウト後のリダイレクト先をトップページへ
  def after_sign_out_path_for(resource)
    flash[:alert] = "ログアウトしました"
    root_path
  end
end
