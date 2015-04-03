class Spree::NewsletterRecipientsController < ApplicationController

  def create
    @recipient = Spree::NewsletterRecipient.new(permit_params)
    respond_to do |format|
      if @recipient.save
        format.html { redirect_to :back, notice: 'E-Mail wurde erfolgreich aufgenommen.' }
      end
    end
  end

  private

  def permit_params
    params.require(:newsletter_recipient).permit(:email)
  end
end
