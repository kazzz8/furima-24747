class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit]

  def index
    @items = Item.all.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    return if @item.user.id == current_user.id

    redirect_to action: :index
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(params[:id])
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :description, :price, :category_id, :condition_id, :shipping_fee_payer_id,
                                 :prefecture_id, :days_to_ship_id).merge(user_id: current_user.id)
  end
end
