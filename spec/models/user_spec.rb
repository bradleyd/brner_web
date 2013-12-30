require 'spec_helper'

describe User do
  it "should not be valid without email address" do
    User.new.should_not be_valid
  end
  it "should append brner.com to email_address" do
    user = User.create(email: 'foobar')
    user.reload
    p user
    user.email.should eq("foobar@brner.com")
  end
end
