class User < ActiveRecord::Base
<<<<<<< HEAD
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
=======
  validates :email, presence: true, uniqueness:true
  validates :name, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
>>>>>>> 381bcb6557cba6f12b49e103777b9fd813c40f32
end
