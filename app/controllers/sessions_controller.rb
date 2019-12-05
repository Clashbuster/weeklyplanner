class SessionsController < ApplicationController

  # skip_before_action :authorized, only: [:new, :create, :welcome]

  # def new

  # end

  # def create
  #   account = Account.authenticate(params[:username], params[:password])
  # if account
  #   session[:user_id] = account.id
  #     redirect_to '/welcome'
  #  else
  #     redirect_to '/login'
  #  end
  # end

  # def create
  #   byebug
  #   @account = Account.find_by(username: params[:username])
  #   return head(:forbidden) unless @account.authenticate(params[:password])
  #   session[:user_id] = @account.id
  # end

  # def login
  # end

  # def welcome
  # end

  # def page_requires_login
  # end

  # def destroy
  #   session[:user_id] = nil
  #   redirect_to root_url, :notice => "Logged out!"
  # end

  def new
  end

  def create
    @account = Account.find_by(username: params[:username])
    if @account && @account.authenticate(params[:password])
      session[:user_id] = @account.id
        redirect_to plans_path
    else
            flash[:message] = 'Invalid form'
            redirect_to '/login'
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  def current_user
    @account = Account.find(session[:user_id])
end

end
