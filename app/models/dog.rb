class Dog < ApplicationRecord
    belongs_to :user
    has_many :service_requests, dependent: :destroy


end
