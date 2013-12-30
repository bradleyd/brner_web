class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  
  has_many :messages, dependent: :destroy
  validates :email, presence: true
  before_create :build_address

  protected
  def build_address
    p dbg: [self.email, email]
    self.email = self.email + "@brner.com"
  end
end
