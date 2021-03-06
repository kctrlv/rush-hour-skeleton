require_relative '../test_helper'

class UserCanViewUrlsForClientTest < FeatureTest
  def test_user_can_view_urls_for_client
    create_clients
    create_payloads

    visit('/sources/apple')
    click_link("View Statistics for Specific URLs")

    assert page.has_content?("Buy")
    assert page.has_content?("Cart")
    assert page.has_content?("Shop")
  end
end
