require 'scopedtraversal'

class ActiveRecord::Base
  extend ScopedTraversal
end