require "application_system_test_case"

class CollaborativeEditorRealtimeTest < ApplicationSystemTestCase
  test "realtime edits appear in both windows" do
    document = documents(:first)
    visit edit_document_path(document)

    # Open a second window
    using_session(:other_user) do
      visit edit_document_path(document)
    end

    # Type in the first window
    find(".collaborative-editor textarea").send_keys("Hello, world!")

    # Wait for the second window to update
    using_session(:other_user) do
      assert_field type: 'textarea', with: "TestHello, world!"
    end
  end
end
