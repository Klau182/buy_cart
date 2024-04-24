class Article < ApplicationRecord

    validates :name, presence: true
    validates :price, presence: true
    belongs_to :user 
end
