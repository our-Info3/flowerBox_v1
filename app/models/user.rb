class User < ActiveRecord::Base
    has_many :adresses, :dependent => :destroy
    has_many :orders
end
