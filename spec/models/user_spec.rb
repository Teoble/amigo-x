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
      # expect(User.raffle(users)).to be false
    end
    it 'have three or more users' do
      users = [create(:user_mail_valid)]
      users << create(:user_mail_valid, email: 'teste@teste.com')
      users << create(:user_mail_valid, email: 'teste1@teste.com')
      users << create(:user_mail_valid, email: 'teste2@teste.com')
      users << create(:user_mail_valid, email: 'teste3@teste.com')
      users << create(:user_mail_valid, email: 'teste4@teste.com')
      users << create(:user_mail_valid, email: 'teste5@teste.com')
      users << create(:user_mail_valid, email: 'teste6@teste.com')
      users << create(:user_mail_valid, email: 'teste7@teste.com')
      users << create(:user_mail_valid, email: 'teste8@teste.com')
      expect(User.raffle(users)).to be true
    end
    it 'have a match' do
      user = create(:user_mail_valid, name: 'Jose', email: 'webgoal@webgoal.com')
      friend = create(:user_mail_valid, name: 'Maria', email: 'maria@webgoal.com')
      expect(user.match?(friend)).to be true
    end

    it 'should not have a match' do
      user = create(:user_mail_valid, name: 'Jose', email: 'webgoal@webgoal.com')
      expect(user.match?(user)).to be false
    end
    it 'should raffle' do
      users = [create(:user_mail_valid)]
      users << create(:user_mail_valid, email: 'teste@teste.com')
      users << create(:user_mail_valid, email: 'teste1@teste.com')
      User.raffle(users)
      expect(users.all? {|u| !u.reload.friend.blank?}).to be true
    end
  end
end
