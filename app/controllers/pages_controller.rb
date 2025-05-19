class PagesController < ApplicationController
  # actions
  # (methods that are defined in the controller)
  def home
  end

  def about
  end

  def contact
    @members = ["claire", "sarah", "kat", "soojin"]
    if params[:member] # if you even did a search
      @members = @members.select do |member|
        # if this is true, then the item stays in the final result
        # if it's false, the item gets removed
        member.start_with?(params[:member].downcase)
      end
    end
  end
end
