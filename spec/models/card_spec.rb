require 'rails_helper'

RSpec.describe Card, type: :model do
  describe 'associations' do
    it { should have_many(:card_kinds) }
    it { should have_many(:kinds).through(:card_kinds) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:mana_cost) }
    it { should validate_presence_of(:img_url) }
    it { should validate_uniqueness_of(:name).with_message('must be unique') }
    it { should enumerize(:rarity).in(:common, :uncommon, :rare, :legendary) }
  end

  describe 'Given some boardgame cards' do
    let(:type) { build_stubbed(:kind, name: 'Creature') }
    let(:card) { build_stubbed(:card, kinds: [type]) }
    
    it { expect(card.character?).to be_truthy }
  end
end
