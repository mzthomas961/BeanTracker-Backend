class User < ApplicationRecord
    has_many :orders
    has_many :coffees, through: :orders
end
