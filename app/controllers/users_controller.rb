class UsersController < ApplicationController

  # POST /resource/sign_in
  def create
    #元の認証ロジック
    #self.resource = warden.authenticate!(auth_options)

    #ageだけでログインできるように変更
    self.resource = User.where(:age => params[:user]['age']).first

    set_flash_message(:notice, :signed_in) if is_flashing_format?
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, :location => after_sign_in_path_for(resource)
  end
end
