require 'shoulda/matchers'
require 'json_matchers/rspec'
require 'rspec/collection_matchers'
require 'simplecov'

JsonMatchers.schema_root = 'spec/fixtures/schemas'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
