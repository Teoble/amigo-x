class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness:true
  validates :name, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  belongs_to :friend, class_name: 'User', foreign_key: 'user_id'

  def self.raffle(users)
    return false if users.count < 3

    friends = users.dup

    array = []
    while true do
      friends.to_a.shuffle!
      array = users.zip(friends)

      break if array.all? do |(u, f)|
        u.match?(f)
      end
    end

    array.each do |(u, f)|
      u.friend = f
      u.save
    end

    true
  end

  def match?(possible_friend)
    self != possible_friend
  end
end
