require 'rails_helper'

RSpec.describe CardKind, type: :model do
  describe 'associations' do
    it { should belong_to(:card) }
    it { should belong_to(:kind) }
  end
end