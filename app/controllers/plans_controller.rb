class PlansController < ApplicationController

    
    
    def index
        @monday_plans = Plan.get_day('monday')
        @tuesday_plans = Plan.get_day('tuesday')
        @wednesday_plans = Plan.get_day('wednesday')
        @thursday_plans = Plan.get_day('thursday')
        @friday_plans = Plan.get_day('friday')
        @saturday_plans = Plan.get_day('saturday')
        @sunday_plans = Plan.get_day('sunday')

    end

    def show
        locate_plan
    end

    def new
        @plan = Plan.new
        @account = Account.find(session[:user_id])
    end

    def create
        @account = Account.find(session[:user_id])
        new_plan = @account.plans.build(plan_params)
        
         if new_plan.valid?
            new_plan.save
            redirect_to plans_path
         else
            flash[:message] = "plans must have a name and day"
            redirect_to '/plans/new'
        end
    end

    def edit
        locate_plan
    end

    def update
        locate_plan
        @plan.update(plan_params)
        redirect_to @plan

    end

    def destroy
        locate_plan
        @plan.destroy
        redirect_to plans_path
    end

    private
     
      def plan_params
        params.require(:plan).permit(:name, :location, :day, :description, :account_id, :group_id)
      end

      def locate_plan
        # byebug
        @plan = Plan.find(params[:id])
    end


end
