class GroupsController < ApplicationController

  def index
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
        redirect_to root_path, notice: '無事更新されました'
    else
        render :edit
    end
  end


  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end

  private
  def group_params
    params.require(:group).permit(:group_name, { :user_ids => [] })
  end
end