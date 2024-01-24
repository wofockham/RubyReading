class Shelf < ApplicationRecord
    acts_as_tenant :user
    validates_presence_of :name

    has_many :shelvings
    has_many :books, :through => :shelvings
end
