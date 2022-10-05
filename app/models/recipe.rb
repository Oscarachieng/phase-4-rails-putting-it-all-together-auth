class Recipe < ApplicationRecord
    validates :title, presence: true
    validates :instructions, presence: true, length: { minimum: 50 }
    belongs_to :user, class_name: "user", foreign_key: "user_id"
       
end
