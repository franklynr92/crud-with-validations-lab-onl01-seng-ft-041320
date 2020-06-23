class Song < ApplicationRecord
    validates :title, presence: true 
    validates :title, uniqueness: true
    validates :released, inclusion: [true, false]
    validates_numericality_of :release_year, less_than_or_equal_to: Time.now.year + 1
    validates :artist, presence: true



end
