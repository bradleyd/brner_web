class Message < ActiveRecord::Base
  belongs_to :user
  has_many :message_parts

  def self_destruct
    unless self.viewed
      self.update_attributes(viewed: true, destruct_on: 10.minutes.from_now)
    end
  end
end
