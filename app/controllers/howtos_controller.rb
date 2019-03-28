class HowtosController < ApplicationController

  def index
    @howtos = Howto.all
  end

  def new
    @howto = Howto.new
  end

  def create
    @howto = Howto.new(howto_params)
    @howto.save
    redirect_to @howto, notice: "Howtoを登録しました。"
  end

  def show
    @howto = Howto.find(params[:id])
  end

  def edit
    @howto = Howto.find(params[:id])
  end

  def update
    @howto = Howto.find(params[:id])
    if @howto.update(howto_params)
      redirect_to @howto, notice: "Howtoを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @howto = Howto.find(params[:id])
    @howto.destroy
    redirect_to howtos_path, notice: "Howtoを削除しました。"
  end

  private

  def howto_params
    params.require(:howto).permit(:title, :body, :url, :new_image)
  end
end
