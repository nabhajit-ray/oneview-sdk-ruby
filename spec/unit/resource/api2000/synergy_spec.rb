require 'spec_helper'

RSpec.describe OneviewSDK::API2000::Synergy do
  describe '#resource_named' do
    it 'calls the OneviewSDK::API2000.resource_named method' do
      expect(OneviewSDK::API2000).to receive(:resource_named).with('ConnectionTemplate', 'Synergy')
      described_class.resource_named('ConnectionTemplate')
    end
  end
end
