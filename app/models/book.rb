class Book < ApplicationRecord
    acts_as_tenant :user
    validates_presence_of :title, :authors, :description, :page_count, :categories, :image_links

    has_many :shelvings
    has_many :shelves, :through => :shelvings
end
