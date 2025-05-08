require "test_helper"
require "capybara/cuprite"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by(:cuprite, screen_size: [1440, 810], options: {
    js_errors: true,
    headless: %w[0 false].exclude?(ENV["HEADLESS"]),
    slowmo: ENV["SLOWMO"]&.to_f,
    process_timeout: 15,
    timeout: 10,
    browser_options: ENV["DOCKER"] ? { "no-sandbox" => nil } : {}
  })
end
