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
    end

    def create
        @plan = Plan.new(plan_params)
        # byebug
         if @plan.valid?
            @plan.save
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
