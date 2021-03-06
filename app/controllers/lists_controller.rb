class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  

  def create
    @list = List.new(list_params)
      if @list.save
      redirect_to list_path @list
      else
      render :new
    end
  end

  def update
    @list = List.find(params[:id])
      if @list.update (list_params)
      redirect_to list_path @list
      else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    
    render :index
  end

    private

    def list_params
    params.require(:list).permit(:name)

    end

end
