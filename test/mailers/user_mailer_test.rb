require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "signup_confirmation" do
    mail = UserMailer.signup_confirmation
    assert_equal "Signup confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "session_registration_confirmation" do
    mail = UserMailer.session_registration_confirmation
    assert_equal "Session registration confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end