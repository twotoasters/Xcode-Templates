Given /^the app is relaunched$/ do
  app.restart
end

Then /^the title bar should read "([^\"]*)"$/ do |arg1|
  if !app.has_navigation_bar?
    raise ProjectName::ExpectationFailed
  end
  puts "'#{app.navigation_bar_title}'"
  if !(app.navigation_bar_title == " #{arg1} ") # For some reason, the title comes back with spaces around it
    raise ProjectName::ExpectationFailed, "Expected title bar to read #{arg1}, but reads #{app.navigation_bar_title}"
  end
end

When /^I hit the reload button$/ do
  app.press_reload
end