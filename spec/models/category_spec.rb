require 'spec_helper'

describe Category do
  context 'associations' do
    it { should have_many(:videos) }
  end
end
