class Article < ApplicationRecord
    include Visible
    has_many :comments, dependent: :destroy
    validates :name, presence: true
    validates :author, presence: true, length: { minimum: 10 }
end
