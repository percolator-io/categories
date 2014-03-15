require 'spec_helper'

describe 'Categories' do
  #TODO: fix me
  def iterate(categories, &block)
    categories.each do |category|
      block.call category
      sub = category.fetch 'subcategories', []
      iterate(sub, &block)
    end
  end


  #TODO: fix me
  let(:path) { File.join(Dir.pwd, 'data', 'categories.yml') }
  let(:categories){ YAML.load(File.open path) }

  it 'any' do
    expect(categories.any?).to be_true
  end

  it 'attributes present'  do
    iterate(categories) do |category|
      expect(category['id'].present?).to be_true
      expect(category['name'].present?).to be_true
      expect(category['query'].present?).to be_true
    end
  end

  it 'id uniq' do
    ids = []
    iterate(categories) do |category|
      ids << category['id']
    end
    expect(ids.length).to eq(ids.uniq.length)
  end
end