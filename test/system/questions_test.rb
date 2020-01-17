require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit questions_ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit questions_ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking a question yields a 'silly question...' response from the coach" do
    visit questions_ask_url
    fill_in "question", with: "Can I sleep some more?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "saying 'I am going to work' yields approval from the coach" do
    visit questions_ask_url
    fill_in "question", with: 'I am going to work'
    click_on "Ask"

    assert_text 'Great!'
  end
end
