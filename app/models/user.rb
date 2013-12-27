class User < ActiveRecord::Base
  has_many :emails, dependent: :destroy
  validates :email_address, presence: true
  before_save :build_address

  protected
  def build_address
    self.email_address = self.email_address + "@brner.com"
  end
end
