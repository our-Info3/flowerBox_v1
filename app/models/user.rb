class User < ActiveRecord::Base
    has_many :adresses, :dependent => :destroy
end
