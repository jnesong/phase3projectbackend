class User < ActiveRecord::Base
    has_many :joinships
    has_many :babies, through: :joinships
end