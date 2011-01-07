require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "incident_received" do
    mail = UserMailer.incident_received
    assert_equal "Incident received", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
