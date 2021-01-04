class Subscriber < ApplicationRecord
    validates :email, presence: true
    validates :email, length: { maximum: 40 }
end
