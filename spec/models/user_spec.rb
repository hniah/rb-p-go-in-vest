require 'rails_helper'

describe User do
  describe 'validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :username }
    it { is_expected.to validate_presence_of :gender }
    it { is_expected.to validate_presence_of :birthday }
    it { is_expected.to enumerize(:gender).in(:male, :female) }
  end
end
