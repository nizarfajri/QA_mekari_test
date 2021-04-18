Given('I visit Amazon') do
    # binding.pry
  visit '/'
end

Then('I click sign in button') do
  find('#nav-link-accountList').click
end

Then('I click Create Amazon account') do
  find('#createAccountSubmit').click
end

When('I fill the form using unregistered account') do
  fill_in('customerName', with: 'John Doe')
  fill_in('email', with: 'peter.grifin@gmail.com')
  fill_in('password', with: 'stewie1234')
  fill_in('passwordCheck', with: 'stewie1234')
  find('[type="submit"]').click
end

Then('I should redirect to Authentication page') do
    # binding.pry
    expect(page).to have_css('div[class="a-box-inner a-padding-extra-large"]')
end

# Given('I visit Amazon') do
#     visit '/'    
# end

Then('I click the sign in button') do
  find('#nav-link-accountList').click
end

Then('I click Create Amazon account button') do
  find('#createAccountSubmit').click  
end

When('I fill the form using registered account') do
    fill_in('customerName', with: 'Nizar Fajri Syawaluddi')
  fill_in('email', with: 'nizar.fajri10@gmail.com')
  fill_in('password', with: 'Nizar96')
  fill_in('passwordCheck', with: 'Nizar96')
  find('[type="submit"]').click
end

Then('I should see notification about sign up problem') do
    expect(page).to have_css('div[class="a-box-inner a-alert-container"]')   
end