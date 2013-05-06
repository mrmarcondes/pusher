#encoding: utf-8
class ChartsController < ApplicationController

  def index

  end

  def chart
    message = params[:message]
    Pusher['test_channel'].trigger('my_event', message)
  end
end
