# frozen_string_literal: true

require 'spec_helper'

RSpec.describe EVE::ESI do
  it 'has a version number' do
    expect(described_class::VERSION).not_to be_nil
  end
end
