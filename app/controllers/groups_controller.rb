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
    @group = Group.new
  end

  def edit
  end

  def update
  end
end
