class GroupsController < ApplicationController
  def index
    @groups = Group.order('created_at DESC')
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:success] = '新規作成に成功しました。'
      redirect_to @group
    else
      render :new
    end

  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(group_params)
      flash[:success] = "グループ情報を更新しました。"
      redirect_to @group
    else
      render :edit      
    end
  end

  private

    def group_params
      params.require(:group).permit(:group_name, :email, :goal, :todo, :frequency, :start_goal_day, :end_goal_day, :genre, :limit_members, :owner_id )
    end
end
