class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end

  
  private

  def item_params
    params.require(:item).permit(:image, :name, :description, :price, :category_id, :condition_id, :shipping_fee_payer_id, :prefecture_id, :days_to_ship_id).merge(user_id: current_user.id)
  end

end
