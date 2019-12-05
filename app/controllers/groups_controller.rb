class GroupsController < ApplicationController

    def join_group
        # byebug
        locate_group
        # byebug
        if AccountGroup.find_by(account_id: session[:user_id], group_id: @group.id)
            flash[:message] = "you are already in this group"
            redirect_to @group
        else
            AccountGroup.create(account_id: session[:user_id], group_id: @group.id)
            flash[:message] = "you have joined #{@group.name}"
            redirect_to @group
        end
    end

    def leave_group
        locate_group
        if !AccountGroup.find_by(account_id: session[:user_id], group_id: @group.id)
            flash[:message] = "you already left this group"
            redirect_to @group
        else
            account_group = AccountGroup.find_by(account_id: session[:user_id], group_id: @group.id)
            account_group.destroy
            flash[:message] = "you have left #{@group.name}"
            redirect_to @group
        end
    end

    def show
        locate_group
        @all_members = @group.accounts
    end

    def index
        @groups = Group.all
    end

    def new
        @group = Group.new
    end

    def create
        @account = Account.find(session[:user_id])
        new_group = @account.groups.build(group_params)
        new_group[:creator] = @account.username
        # byebug
         if new_group.valid?
            new_group.save
            AccountGroup.create(group_id: new_group.id, account_id: @account.id)
            redirect_to groups_path
         else
            flash[:message] = "groups must have a title"
            redirect_to new_group_path
        end
    end

    def destroy
        locate_group
        @group.destroy
        redirect_to groups_path
    end

    private

    def group_params
        params.require(:group).permit(:name, :description, :creator, :group_id)
      end

      def locate_group
        # byebug
        @group = Group.find(params[:id])
    end
end
