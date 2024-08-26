class ShopsController < ApplicationController
  def index
    @q = Shop.ransack(params[:q])
    @shops = @q.result(distinct: true).order(created_at: :desc)
  end

  def show
    @shop = Shop.find(params[:id])
    @q = Shop.ransack(params[:q])
    @shops = @q.result(distinct: true).order(created_at: :desc)
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:title, :description, :area, :budget, :scene, :shop_image, :shop_image_cache)
  end

  # def autocomplete
  #   @shops = Shop.where("title like ?", "%#{params[:q]}%").limit(6)
  #   render partial: 'shops/autocomplete', locals: { shops: @shops }
  # end
end
