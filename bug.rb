require 'minitest'
require 'minitest/autorun'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, screen_size: [1920, 1080], window_size: [1920, 1080])
end
Capybara.default_driver = :poltergeist

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

  def test_navigating_away_while_part_way_through_loading_raises_an_exception
    visit "https://www.intercom.io"
    visit "https://www.intercom.io"
    visit "https://www.intercom.io"
    visit "https://www.intercom.io"
    visit "https://www.intercom.io"
  end
end
