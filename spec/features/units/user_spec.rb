require './lib/user'

describe User do
  describe '.authenticate' do
    before do
      user = User.new(email: 'test@test.com')
      user.password = 'test12'
      user.save!
    end

    it 'returns user when valid' do
      user = described_class.authenticate(email: 'test@test.com', password: 'test12')
      expect(user).not_to eq nil
    end

    it 'returns nil when email invalid' do
      user = described_class.authenticate(email: 'incorrect@test.com', password: 'test12')
      expect(user).to eq nil
    end

    it 'returns user password invalid' do
      user = described_class.authenticate(email: 'test@test.com', password: 'incorrect')
      expect(user).to eq nil
    end
  end
end