class Subscriber < ApplicationRecord
    validates :email, presence: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :email, length: { maximum: 40 }
end
