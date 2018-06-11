class Types::QueryType < Types::BaseObject
  # links
  field :links, resolver: Resolvers::LinksResolver::Index
  field :link, resolver: Resolvers::LinksResolver::Show

  # other fields here...
end
