class ApplesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'apples'
  end
end