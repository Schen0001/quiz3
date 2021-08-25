class BidsController < ApplicationController
    def create
       @auction = Auction.find params[:auction_id]
       bid_params = params.require(:bid).permit(:bid)
       @bid = Bid.new bid_params
       if @bid.save
            redirect_to auction_path(@auction)
       else
        render '/auctions/show'
       end
    end
end
