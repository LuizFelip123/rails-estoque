class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end
  def new 
    @client = Client.new()

  end 
  def edit 
    @client = Client.find(params[:id])
  end  
  def update 
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path 
    else 
      render :edit, status: :unprocessable_entity
    end  
  end  
  def create 
    @client = Client.new(client_params)

    if @client.save
      redirect_to clients_path
    else
      render :new, status: :unprocessable_entity
    end  
  end
  def destroy 
    @client = Client.find(params[:id])
    @client.destroy

    redirect_to clients_path
  end  
  private 
  def client_params 
    params.require(:client).permit(:name, :city, :district, :cpf)
  end  
end
