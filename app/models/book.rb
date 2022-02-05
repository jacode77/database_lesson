class Book < ApplicationRecord
    # validates :genre, presence: true
    validates_presence_of :title, :author
    belongs_to :author
    has_many :books_genres
    has_many :genres, through: :books_genres
end