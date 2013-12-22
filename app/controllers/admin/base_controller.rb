class Admin::BaseController < ApplicationController
  layout "admin/base"
  #before_action :authenticate_user!
  before_filter :current_user
  before_filter :basic_auth

  def current_user
    @user = User.first
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |user, password|
      user == "simple@blog.test" && password == "hoge1234"
    end
  end


end
