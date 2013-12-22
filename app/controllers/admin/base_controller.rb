class Admin::BaseController < ApplicationController
  layout "admin/base"
  #before_action :authenticate_user!
  before_filter :current_user

  def current_user
    @user = User.first
  end
end
