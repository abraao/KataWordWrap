Given(/^the string:$/) do |text_to_wrap|
  @text_to_wrap = text_to_wrap
end

Given(/^column number (\d+)$/) do |column_number|
  @column_number = column_number
end

When(/^I wrap the input$/) do
  @actual_wrapped_text = Wrapper.new.wrap(@text_to_wrap, @column_number.to_i)
end

Then(/^I should see:$/) do |expected_wrapped_text|
  assert_equal(expected_wrapped_text, @actual_wrapped_text)
end

# Support for scenario outline

Given(/^the string (.*)$/) do |text_to_wrap|
  @text_to_wrap = text_to_wrap
end

Then(/^I should see (.*)$/) do |expected_wrapped_text|
  assert_equal(expected_wrapped_text, @actual_wrapped_text)
end