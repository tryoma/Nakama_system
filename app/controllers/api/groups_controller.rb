module Api
  class GroupsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
      @groups = Group.order('created_at DESC')
    end

    def create
      @group = Group.new(group_params)

      if @group.save
        render json: @group, status: :created
      else
        render json: @group.errors, status: :unprocessable_entity
      end
    end

    def destroy
      Group.find(params[:id]).destroy!
    end

    def update
      Group.find(params[:id]).toggle!(:is_done)
    end

    private def group_params
      params.require(:group).permit(:name, :is_done)
    end
  end
end