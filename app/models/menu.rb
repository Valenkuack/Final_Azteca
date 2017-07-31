class Menu < ActiveRecord::Base
    has_many :items
    
    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end

end 