require 'rails_helper'

RSpec.describe Role, type: :model do
  let(:role) { build(:role) }
    
  it 'has a valid role' do
    expect(role).to be_valid
  end
end
