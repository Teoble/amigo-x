describe User do
  context "validate mail" do
    it "test if mail is valid" do
      user = create(:user_mail_valid)
      # user = User.new({name: 'jose', email: 'email@email.com'})
      expect(user.valid?).to be true
    end
    it "test if mail is not valid" do
      user = build(:user_mail_not_valid)
      # user = User.new({name: 'jose', email: 'email@email.com'})
      expect(user.valid?).to be false
    end
  end
  #pending "add some examples to (or delete) #{__FILE__}"
  context 'raffling' do
    it 'should have at least three users' do
      users = [create(:user_mail_valid)]
      expect(User.raffle(users)).to be false
      users << create(:user_mail_valid, email: 'teste@teste.com')
      users << create(:user_mail_valid, email: 'teste1@teste.com')
      expect(User.raffle(users)).to be true
    end
    it 'have a match' do
      #user = create(:user, name: 'Jose', email: 'webgoal@webgoal.com')
      #friend = create(:user, name: 'Maria', email: 'maria@webgoal.com')
      #user.match(user, friend)
    end
  end
end
