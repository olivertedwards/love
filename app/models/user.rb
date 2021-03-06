class User < ApplicationRecord
  after_create :skip_confirmation!

  has_many :interests_users
  has_many :interests, through: :interests_users

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  def skip_confirmation!
    self.confirm if Rails.env.development?
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
