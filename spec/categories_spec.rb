require 'spec_helper'

describe 'Categories' do
  let(:path) { File.join(Dir.pwd, 'data', 'categories.yml') }

  # PercolatorCategories have validators
  let(:collection_categories){ PercolatorCategories::Collection.from_yaml_file path }

  it 'should be' do
    expect(collection_categories.count).to be > 0
  end
end
