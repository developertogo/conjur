# frozen_string_literal: true

Then(/^I list the public keys for "([^"]*)"$/) do |username|
  @client ||= Client.for("user", "admin")
  @result = api_response { @client.fetch_public_keys(username: username) }
end
