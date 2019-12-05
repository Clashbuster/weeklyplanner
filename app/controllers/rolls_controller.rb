class RollsController < ApplicationController

private 
    
    def roll_params
        params.require(:roll).permit(:name)
      end


end
