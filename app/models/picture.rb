class Picture < ActiveRecord::Base
    validates :artist, presence: true
    validates :title, length: { minimum: 3 }
    validates :title, length: { maximum: 20 }
    validates :url, presence: true
    validates :url, uniqueness: true
end
