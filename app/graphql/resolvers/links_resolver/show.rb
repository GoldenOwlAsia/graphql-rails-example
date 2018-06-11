class Resolvers::LinksResolver::Show < Resolvers::Base
  type Types::LinkType, null: true

  argument :id, ID, required: true

  def resolve(id: nil)
    link = Link.find(id)
  rescue
    raise GraphQL::ExecutionError.new('Not found')
  end
end
