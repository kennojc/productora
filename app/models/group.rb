class Group < ApplicationRecord
    has_many :concerts
   
    enum bandtype: [:male, :female, :band]

    def to_s 
        name
    end

    
    def total_concerts
        concerts.includes(group_id: id).count
    end


    def attendance
        concerts.includes(group_id: id).map {|t| t.tickets}.sum
    end

    def last_concert
        concerts.order(date: :asc).last.date
    end

    def max_people
        concerts.pluck(:tickets).max
    end

    def max_duration
        concerts.pluck(:duration).max
    end

    def debut
        
    end

end
