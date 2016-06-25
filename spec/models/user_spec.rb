require 'rails_helper'

describe User do
  #pending "add some examples to (or delete) #{__FILE__}"
  context 'raffling' do
    it 'should have at least three users' do
      users = [ create(:user, name: 'Jose', email: 'webgoal@webgoal.com')]
      expect(User.raffle(users)).to be false
      users << create(:user, name: 'Jose', email: 'webgoal@webgoal.com')
      users << create(:user, name: 'Jose', email: 'webgoal@webgoal.com')
      expect(User.raffle(users)).to be true
    end
    it 'have a match' do
      #user = create(:user, name: 'Jose', email: 'webgoal@webgoal.com')
      #friend = create(:user, name: 'Maria', email: 'maria@webgoal.com')
      #user.match(user, friend)
    end
  end
end
