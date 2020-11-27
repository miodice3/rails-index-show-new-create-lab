class CouponsController < ApplicationController

    def index
        #byebug
        @coupons = Coupon.all
    end

    def new
    end

    def create
        #byebug
        coupon = Coupon.new
        coupon.coupon_code = params[:coupon][:coupon_code]
        coupon.store = params[:coupon][:store]
        coupon.save
        redirect_to coupon
    end

    def show
        @coupon = Coupon.find_by_id(params[:id])
        # byebug
    end

end