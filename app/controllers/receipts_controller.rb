class ReceiptsController < ApplicationController
  def index
    @receipts = Receipt.all
  end

  def show
    @receipt = Receipt.find(params[:id])
  end

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new(receipt_params)
    if @receipt.save
      redirect_to @receipt, notice: "レシートを登録しました。現在解析中です"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def receipt_params
    params.require(:receipt).permit(:image)
  end
end
