class Posting < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5, maximum: 50}
    validates :company, presence: true
    validates :salary, presence: true
    validates :location, presence: true, comparison: { equal_to: "in-house" || "remote"} 

    def self.search(query)
        where('lower(title) LIKE :query 
        OR lower(company) LIKE :query 
        OR lower(salary) LIKE :query 
        OR lower(location) LIKE :query',
        query:"%#{query.downcase}%")
    end

    def self.remote_filter()
        where("lower(location) LIKE 'remote'")
    end
end