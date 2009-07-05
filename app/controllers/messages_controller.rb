class MessagesController < ApplicationController



  skip_before_filter :verify_authenticity_token

  def index
    @messages = Message
  end

  def poll
    @messages = Message
    begin
      java.lang.Thread.sleep 500
    rescue
    end
    render :partial => 'messages'
  end

  def create
    Message.synchronized do
      n = Message.empty?? 0 : (Message.last_key + 1)
      Message.put n, params[:message][:text]
    end
    render :nothing => true
#    redirect_to :action => :index
  end

end
