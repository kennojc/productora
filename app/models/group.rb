class Group < ApplicationRecord
    has_many :concerts

    enum bandtype: [:male, :female, :band]



end
