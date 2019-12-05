class GroupsController < ApplicationController

    def show
    end

    def index
        @groups = Group.all
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
