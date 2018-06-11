class Types::MutationType < Types::BaseObject
  # links
  field :create_link, mutation: Mutations::LinksMutation::Create
  field :update_link, mutation: Mutations::LinksMutation::Update
  field :delete_link, mutation: Mutations::LinksMutation::Delete

  # other fields here...
end
