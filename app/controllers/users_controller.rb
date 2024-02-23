class UsersController < ApplicationController
    before_action :authenticate_user! # Ensures user is authenticated before accessing this controller
  
    def show
      @user = current_user
    end
  end
  