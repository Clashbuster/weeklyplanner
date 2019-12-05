class GroupsController < ApplicationController

    def show
        locate_group
    end

    def index
        @groups = Group.all
    end

    def new
        @group = Group.new
    end

    def create
        @group = Group.new(group_params)
        # byebug
         if @group.valid?
            @group.save
            redirect_to groups_path
         else
            flash[:message] = "groups must have a title"
            redirect_to new_group_path
        end
    end

    private

    def group_params
        params.require(:group).permit(:name, :description)
      end

      def locate_group
        # byebug
        @group = Group.find(params[:id])
    end
end
