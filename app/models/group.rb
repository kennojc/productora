class Group < ApplicationRecord
    has_many :concerts, :dependent => :destroy
   
    enum bandtype: [:male, :female, :band]

    def to_s 
        name
    end

    
    def total_concerts
        concerts.where(group_id: id).count
    end


    def attendance
        concerts.where(group_id: id).map{|concert| concert.tickets}.sum
    end

    def last_concert
        concerts.where(group_id: id).map{|concert| concert.event.strftime("%Y:%B:%A")}.last
    end

    def max_people
        concerts.pluck(:tickets).max
    end

    def max_duration
        concerts.pluck(:duration).max
    end



end
