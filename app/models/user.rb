class User < ActiveRecord::Base
  belongs_to :friend, class_name: 'User', foreign_key: 'user_id'

  def self.raffle(users)
    if users.count==3
      true
    else
      false
    end
    friends= Array(users)

    users.each do |user|
      #friends.shuffle!(Time.now.to_i)

    end

  end
end
