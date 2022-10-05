class UsersSerializer < ActiveModel::Serializer
  attributes :id, :username, :image_url, :bio
  has_many :recipes, class_name: "recipe", foreign_key: "reference_id"
end
