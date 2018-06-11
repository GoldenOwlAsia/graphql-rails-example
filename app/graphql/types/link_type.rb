class Types::LinkType < Types::BaseObject
  field :id, ID, null: false
  field :url, String, null: false
  field :description, String, null: false
  field :author, Types::UserType, null: false, method: :user
end
