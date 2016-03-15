class Apple < ActiveRecord::Base

  after_commit { ActionCable.server.broadcast 'apples', apple: self }

end
