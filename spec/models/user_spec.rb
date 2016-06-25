describe User, type: :model do
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

  end
