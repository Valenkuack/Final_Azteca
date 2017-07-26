class ItemsController < ApplicationController
  
  # GET /menus/1/items
  def index
    # For URL like /menus/1/items
    # Get the menu with id=1
    @menu = Menu.find(params[:menu_id])
    # Access all items for that menu
    @items = @menu.items
    
  end
  
# GET /menus/1/items/2
  def show
    @menu = Menu.find(params[:menu_id])
    # For URL like /menun/1/items/2
    # Find an item in menus 1 that has id=2
    @item = @menu.items.find(params[:id])
  end

# GET /menus/1/items/new
  def new
    @menu = Menu.find(params[:menu_id])
    # Associate an item object with menu 
    @item = @menu.items.build
  end
  
# POST /menus/1/items
  def create
    @menu = Menu.find(params[:menu_id])
    # For URL like /menus/1/items
    # Populate an item associate with menu 1 with form data
    # Menu will be associated with the Item
    # @item = @menu.items.build(params.require(:item).permit!)
    @item = @menu.items.build(params.require(:item).permit(:name, :description, :price))
      if @item.save
        # Save the item successfully
        redirect_to menu_item_url(@menu, @item)
      else
      render :action => "new"
      end
  end


# GET /movies/1/reviews/2/edit
  def edit
    @menu = Menu.find(params[:menu_id])
    # For URL like /menus/1/items/2/edit
    # Get item id=2 for menu 1
    @item = @menu.items.find(params[:id])
  end

# PUT /menus/1/items/2
  def update
    @menu = Menu.find(params[:menu_id])
    @item = Item.find(params[:id])
    if @item.update_attributes(params.require(:item).permit(:name, :description, :price))
    # Save the review successfully
    redirect_to menu_item_url(@menu, @item)
    else
      render :action => "edit"
    end
  end

  
# DELETE /menus/1/items/2
  def destroy
    @menu = Menu.find(params[:menu_id])
    @item = Item.find(params[:id])
    @item.destroy
    
    respond_to do |format|
      format.html { redirect_to menu_items_path(@menu) }
      format.xml { head :ok }
    end
  end

end