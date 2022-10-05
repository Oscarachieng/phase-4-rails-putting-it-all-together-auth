class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :instructions, :minutes_to_complete
  belongs_to :user, class_name: "user", foreign_key: "user_id"
end
