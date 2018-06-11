class Mutations::LinksMutation::Create < Mutations::Base
  type Types::LinkType
  null true

  argument :url, String, required: true
  argument :description, String, required: true
  argument :user_id, ID, required: true

  def resolve(args)
    link = Link.new(args)
    link.save ? link : raise(GraphQL::ExecutionError.new(link.errors.full_messages.first))
  end
end
