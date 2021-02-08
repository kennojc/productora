class Group < ApplicationRecord
    has_many :concerts

    enum bandtype: [:male, :female, :band]

    def total_concerts
        concerts.includes(group_id: id).count
    end


    def attendance
        concerts.includes(group_id: id).each {|c| c.tickets}.sum
    end

    

end
