class Baby < ActiveRecord::Base
    has_many :joinships
    has_many :users, through: :joinships
    has_many :sleeps
end