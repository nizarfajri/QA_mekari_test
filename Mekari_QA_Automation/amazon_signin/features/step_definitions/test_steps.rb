Given('I visit Amazon') do
  visit '/'
end

Then('I click Sign in') do
  find('#nav-link-accountList').click
end

When('I input valid email') do
  find('#ap_email').set('nizar.fajri10@gmail.com')
  find('[type="submit"]').click
end

When('I input valid password') do
  find('#ap_password').set('Fajri_Syawaluddi')
  find('[type="submit"]').click
end

Then('I should see homepage') do
  
end

Then('I Click Sign in') do
  find('#nav-link-accountList').click
end

When('I input Valid email') do
  find('#ap_email').set('nizar.fajri10@gmail.com')
  find('[type="submit"]').click
end

When('I input invalid password') do
  find('#ap_password').set('Nizar_96')
  find('[type="submit"]').click
end

Then('I should see Notification about invalid credential') do
  expect(page).to have_content('There was a problem')
end
