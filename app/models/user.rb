class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :users, join_table: :users_roles
  has_many :posts, dependent: :destroy

  validates :display_name, presence: true, length: { maximum: 80 }

  def name
    display_name
  end
end
