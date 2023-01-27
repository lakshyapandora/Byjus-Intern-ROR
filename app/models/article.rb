class Article < ApplicationRecord
    validates :name, presence: true
    validates :author, presence: true, length: { minimum: 10 }
end
