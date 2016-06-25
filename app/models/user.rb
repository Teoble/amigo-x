class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness:true
  validates :name, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  belongs_to :friend, class_name: 'User', foreign_key: 'user_id'

  def self.raffle(users)
    ret = false
    if users.count==3
      ret = true
    else
      ret = false
    end
    friends= Array(users)

    users.each do |user|
      #friends.shuffle!(Time.now.to_i)

    end
    return ret
  end
end
