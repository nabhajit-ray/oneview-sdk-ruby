require 'spec_helper'

klass = OneviewSDK::ImageStreamer::API800::BuildPlan
RSpec.describe klass do
  include_context 'shared context'
  it 'inherits from API600' do
    expect(described_class).to be < OneviewSDK::ImageStreamer::API600::BuildPlan
  end
end
