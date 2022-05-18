class CookiesController < ApplicationController
  def set
    cookies[:user_alias] = 'CookieJammer'
    cookies[:client_id] = '87432'
  end

  def show
    @user_alias = cookies[:user_alias]
    @client_id = cookies[:client_id]
  end

  def delete
    cookies.delete :user_alias
    cookies.delete :client_id
  end
end
