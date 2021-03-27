require 'rails_helper'

RSpec.describe Kind, type: :model do
  describe 'associations' do
    it { should have_many(:card_kinds) }
    it { should have_many(:cards).through(:card_kinds) }
  end
end