class AdvicesController < ApplicationController
  def show
     @advice = Advice.find_by(secure_token: params[:id])
  end
  
  def new
    @advice = Advice.new
  end

  def create
    @advice = Advice.new(advice_params)
    if @advice.save
      redirect_to advice_url(@advice.secure_token)
    else
      render @advice
    end
  end

  private
  def advice_params  
    params.require(:advice).permit(:subjet, :description, :incident_date, :secure_token, photos: [])
  end

end