Given(/^that there no microposts$/) do
end

When(/^I visit the micropost page$/) do
  visit '/microposts'
end

Then(/^a page is shown with the message "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end
