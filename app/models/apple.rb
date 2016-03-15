class Apple < ActiveRecord::Base

  after_commit :mybroadcast, on: :update

  def mybroadcast
    ActionCable.server.broadcast 'apples', apple: self
  end

end
