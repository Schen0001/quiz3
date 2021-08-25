class AuctionsController < ApplicationController
    before_action :authenticate_user!, except: [:show]

    def home
    end

    def index
        @auctions = Auction.all.order(created_at: :desc)
    end

    def show
        @auction = Auction.find(params[:id])
        @bid = Bid.new
    end

    def new
        @new_auction = Auction.new
    end

    def create
        @new_auction = Auction.new params.require(:auction).permit(:title, :description, :ends_at, :reserve_price)
        if @new_auction.save
            redirect_to auctions_path
        else
            redirect_to new_auction_path
        end
    end
end
