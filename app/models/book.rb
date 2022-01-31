class Book < ApplicationRecord
    # validates :genre, presence: true
    validates_presence_of :title, :author, :genre
    belongs_to :author
end