class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])

  end

  def new
    @coupon = Coupon.new
  end

  def create


    @coupon = Coupon.create(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
  #  byebug
    @coupon.save
#byebug
    redirect_to coupon_path(@coupon)

  end

end
