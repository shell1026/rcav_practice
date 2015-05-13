class CalculationsController < ApplicationController
  def instructions
  end

  def sqrt
  end

  def pmt
  end

  def square_number
    @num = params[:num]
    @square =@num.to_f**2
  end

  def square_root
    @num = params[:num].to_f
    @square_root = Math.sqrt(@num)
  end

  def loan_payment
    @rate = params[:rate].to_f
    @payments = params[:payments].to_f
    @principal = params[:principal].to_f
    rate = (@rate / 100 / 12).to_f

    @monthly_payment = (rate*@principal)/(1-(1+rate)**-@payments)

  end

end
