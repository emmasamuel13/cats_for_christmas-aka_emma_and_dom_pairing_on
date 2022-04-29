require 'password_checker'

RSpec.describe PasswordChecker do
  context 'checks if a password is 8 characters long' do
    it 'fails' do
      password = PasswordChecker.new
      expect { password.check('dom sux') }.to raise_error 'Invalid password, must be 8+ characters.'
    end

    it 'passes' do
      password = PasswordChecker.new
      result = password.check('dom is not great')
      expect(result).to eq true
    end
  end
end
