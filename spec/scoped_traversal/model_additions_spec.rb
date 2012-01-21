# encoding: utf-8
require 'spec_helper'

# class User < SuperModel::Base
#   attributes :position
#   
#   scope :position, order(:position)
#   
#   ## Put in the shit!
#   extend ScopedTraversal::ModelAdditions
#   traverse_by :position
# end

describe ScopedTraversal::ModelAdditions do
  
  before(:each) do
    @user1 = User.create!(position: 1)
    @user2 = User.create!(position: 2)
    @user3 = User.create!(position: 3)
  end
  
  it "adds object#next to traverse forward" do
    @user1.next.should eq(@user2)
  end

end
