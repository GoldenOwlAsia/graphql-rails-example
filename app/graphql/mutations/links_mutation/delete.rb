class Mutations::LinksMutation::Delete < Mutations::Base
  type Types::LinkType
  null true

  argument :id, ID, required: true

  def resolve(args)
    link = Link.find_by(id: args[:id])
    raise GraphQL::ExecutionError.new('Not found') unless link
    link.destroy ? link : raise(GraphQL::ExecutionError.new("Fail to delete link with id #{args[:id]}"))
  end
end
