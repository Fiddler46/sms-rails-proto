require 'securerandom'
class TriggerController < ApplicationController
    def notification
        @message = Message.new(message_params)
        @id = params[:team_id]
        @content = params[:content]
        #@mob = Team.joins(:developers).where(team_id: @id).pluck(:mobile)
        #@mob = Team.joins(:developers).pluck(:mobile)
        Team.includes(:developers).find(@id).pluck(:'developers.mobile')
        tim = Time.now

        if @message.save
          respond_to do |format|
            format.json { render json: { 'res' => {:team_id => @id, 'sms' => {SecureRandom.uuid => @sr, :mobile => @mob, :content => @content, "sent_at" => tim } } } }
          end
        else
            render json: @message.errors, status: :unprocessable_entity
        end

    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.permit(:team_id, :title, :content)
    end
end
