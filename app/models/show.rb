class Show < ActiveRecord::Base
    #highest rating
    def self.highest_rating
        self.maximum('rating')
    end
    #most popular shoe
    def self.most_popular_show
        self.find_by(rating: self.highest_rating)
    end
    #lowest rating
    def self.lowest_rating
        self.minimum(:rating)
    end
    #least populat
    def self.least_popular_show
        self.find_by(rating: self.lowest_rating)
    end
    #sum
    def self.ratings_sum
        self.sum(:rating)
    end
    #POPULAR SHOW
    def self.popular_shows
        self.where('rating > ?', 5)
    end

    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end