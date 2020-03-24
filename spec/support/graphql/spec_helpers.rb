module GraphQL::SpecHelpers
  attr_reader :gql_response

  class Response < Hashie::Mash
  end

  def run_query(query, variables: {}, context: {}, raise_errors: true)
    converted = variables.deep_transform_keys { |key| key.to_s.camelize(:lower) }
    res = ApiSchema.execute(query, variables: converted, context: context, operation_name: nil)
    if raise_errors && res['errors']
      raise "GraphQL response errors: \n#{JSON.pretty_generate(res['errors'])}"
    end
    @gql_response = Response.new(res.to_h.deep_transform_keys { |key| key.to_s.underscore })
  end
  alias run_mutation run_query
end
