class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    has_many :recipes, class_name: "recipe", foreign_key: "reference_id"
end
