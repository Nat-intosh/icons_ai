class Icon < ApplicationRecord
    has_and_belongs_to_many :users

    def liked_by?(user)
        return false if user.nil?
        user.in?(users)
    end

    def toggle_like_for(user)
        liked_by?(user) ? users.delete(user)
                        : users << user 
    end
end
