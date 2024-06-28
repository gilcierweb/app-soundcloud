# == Schema Information
#
# Table name: artists
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Artist, type: :model do

  context 'validations' do
    it { should validate_presence_of :name }
  end

  it "has a valid factory" do
    expect(FactoryBot.build(:artist)).to be_valid
  end
end
