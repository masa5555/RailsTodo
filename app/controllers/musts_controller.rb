class MustsController < ApplicationController
  def index
    @musts = Must.all.order(deadline: :ASC)
  end
  def new
    @must = Must.new
  end
  def create
    @must = Must.new(
        task: params[:task],
        deadline: params[:deadline]
    )
    if @must.save
      flash[:notice] = "タスクを保存しました"
      redirect_to("/index")
    else
      render("/create")
    end
  end
  def edit
    @must = Must.find_by(id: params[:id])
  end
  def update
    @must = Must.find_by(id: params[:id])
    @must.task = params[:task]
    @must.deadline = params[:deadline]
    if @must.save
      flash[:notice] = "タスクを編集しました"
      redirect_to("/index")
    else
      render("musts/edit")
    end
  end
  def destroy
    @must = Must.find_by(id: params[:id])
    @must.destroy
    flash[:notice] = "タスクを完了しました"
    redirect_to("/index")
  end
end
