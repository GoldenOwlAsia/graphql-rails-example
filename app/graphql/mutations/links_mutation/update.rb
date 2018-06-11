class Mutations::LinksMutation::Update < Mutations::Base
  type Types::LinkType
  null true

  argument :id, ID, required: true
  argument :url, String, required: false
  argument :description, String, required: false
  argument :user_id, ID, required: false

  def resolve(args)
    link = Link.find_by(id: args[:id])
    raise GraphQL::ExecutionError.new('Not found') unless link
    link.update(args.except(:id)) ? link : raise(GraphQL::ExecutionError.new(link.errors.full_messages.first))
  end
end
