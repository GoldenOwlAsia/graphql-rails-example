class GraphqlTutSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end

GraphQL::Errors.configure(GraphqlTutSchema) do
  rescue_from ActiveRecord::RecordNotFound do |exception|
    GraphQL::ExecutionError.new("Record not found")
  end

  rescue_from ActiveRecord::RecordInvalid do |exception|
    GraphQL::ExecutionError.new(exception.record.errors.full_messages.to_sentence)
  end
end
