class PlayersController < ApplicationController
  def index
    @players = Player.all
  end
 
  def show 
    @player = Player.find(params[:id])
  end

  def new 
    @player = Player.new
  end
  def create
    @player = Player.new(player_params)  
     if @player.save
      redirect_to player_path(@player)
     else 
      render :new, status: :unprocessable_entity
     end
    end
    
    def edit
      @player = Player.find(params[:id])
    end  
    
    def update
      @player = Player.edit(player_params)
      if @player.update 
        redirect_to new_player_path
      else 
        render :edit
      end
    end

    def destroy
      @player = Player.find(params[:id])
      @player.destroy
      redirect_to player_path
    end
private
def player_params
  params.require(:player).permit(:name , :nation , :number)
end  
end