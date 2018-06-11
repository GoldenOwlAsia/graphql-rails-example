class Resolvers::LinksResolver::Index < Resolvers::Base
  type [Types::LinkType], null: false

  def resolve
    Link.include(:user).all
  end
end
