# (C) Copyright 2018 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

RSpec.shared_examples 'HypervisorManagerDeleteExample' do |context_name|
  include_context context_name

  describe '#delete' do
    it 'deletes the resource' do
      item = described_class.new(current_client, name: HYPERVISOR_MGR_NAME)

      expect(item.retrieve!).to eq(true)

      expect { item.delete }.not_to raise_error

      expect(item.retrieve!).to eq(false)

    end
  end
end
