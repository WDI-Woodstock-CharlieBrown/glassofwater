class AquaController < ApplicationController
  def index
    @aquas = Aqua.all
  end

  def show
    @aqua = Aqua.find(params[:id])
    #Kishan does this
  end

  def new
    @aqua = Aqua.new
    #Bret does this
  end
  def create
    aqua = Aqua.create( aqua_params )
    redirect_to "/aquas/#{ aqua.id }"
  end

  def edit
    @aqua = Aqua.find(params[:id])
    #Sarah does this
  end
  def update
    aqua = Aqua.find(params[:id])
    aqua.update( aqua_params )
    redirect_to "/aquas/#{ aqua.id }"
  end

  private

  def aqua_params
    params.require(:aqua).permit(:name, :description)
  endq
end


# aquas GET    /aquas(.:format)          aquas#index
#       POST   /aquas(.:format)          aquas#create
# new_aqua GET    /aquas/new(.:format)      aquas#new
# edit_aqua GET    /aquas/:id/edit(.:format) aquas#edit
#  aqua GET    /aquas/:id(.:format)      aquas#show
#       PATCH  /aquas/:id(.:format)      aquas#update
#       PUT    /aquas/:id(.:format)      aquas#update
#       DELETE /aquas/:id(.:format)      aquas#destroy
