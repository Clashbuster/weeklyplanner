class AccountsController < ApplicationController

    # skip_before_action :authorized, only: [:new, :create]

    # def new
    #     @account = Account.new
    # end

    # def create
    #     @account = Account.new(account_params)
    #     if @account.valid?
    #         @account.save
    #         flash[:notice] = "Your account has been created"
    #         flash[:color] = "valid"
    #         session[:user_id] = @account.id
    #         redirect_to '/welcome'
    #     else
    #         flash[:notice] = "Form is invalid"
    #         flash[:color] = "invalid"
    #         render :new
    #     end
    # end




    # private

    # def account_params
    #     params.require(:account).permit(:username, :password, :password_confirmation)
    # end


    def create
        @account = Account.new(account_params)
        if @account.valid?
            @account.save
            redirect_to '/plans'
        else
            flash[:message] = "invalid form"
            redirect_to '/signup'
        end
      end
     
      private
     
      def account_params
        params.require(:account).permit(:username, :password, :password_confirmation)
      end
end
