class MessagesController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @messages = Message
  end

  def poll
    if ! Client.contains_key params[:client_id]
      queue = java.util.concurrent.ArrayBlockingQueue.new 1
      Client.put params[:client_id], queue
    else
      queue = Client.get params[:client_id]
    end
    queue.take
    @messages = Message
    render :partial => 'messages'
  end

  def create
    Message.synchronized do
      n = Message.empty?? 0 : (Message.last_key + 1)
      Message.put n, params[:message][:text]
    end
    Client.synchronized do
      Client.each do |client_id, queue|
        queue.put 1 unless queue.peek
      end
    end
    render :nothing => true
#    redirect_to :action => :index
  end

end
