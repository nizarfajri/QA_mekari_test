Given('I visit myjurnal') do
  visit '/'
end

Then('I login') do
  fill_in('user[email]', with: 'nizar.fajri10@gmail.com')
  fill_in('user[password]', with: 'Fajri_Syawaluddi')
  find('[type="submit"]').click
end

Then('I go to the sales menu') do
  find('#sales-li').click
end

Then('I click new sales invoice and choose Sales invoice') do
  click_on(class: 'btn btn-action btn-transactions btn-invoice')
end

Then('I created new customer') do
  find('#select2-chosen-19').click
    find('#newTerm').click
    find('#person_display_name').set('Nizar Fajri Syawluddi')
    find('#person_email').set('nizarfajri6@gmail.com')
    find('#person_billing_address').set('Kemayoran')
    find('#person_phone').set('081311528825')
    find('#aodc-add').click
end

Then('I input Transaction Date') do
  find('#transaction_transaction_date').click
  find('#transaction_transaction_date').set('')  
  find('#transaction_transaction_date').set('25/04/2021')
end

Then('I created new product') do
    find('#select2-chosen-20').click
    find('#select2-result-label-0').click
    fill_in('product[name]', with: 'Gerry Choco')
    fill_in('product[product_code]', with: '18115699')
    find('#select2-chosen-26').click
    fill_in('s2id_autogen26_search', with: 'Pcs')
    sleep(1)
    find('#s2id_autogen26_search').native.send_keys(:return)
    fill_in('s2id_autogen16', with: 'food')
    find('#s2id_autogen16').native.send_keys(:return)
end

Then('I input Buy unit Price') do
  fill_in('product[buy_price_per_unit]', with: '500000')
end

Then('I input Sale Unit Price') do
  fill_in('product[sell_price_per_unit]', with: '600000')
  find('#select2-chosen-25').click
  fill_in('s2id_autogen25_search', with: 'PPN')
  sleep(1)
  find('#s2id_autogen25_search').native.send_keys(:return)
end

Then('I click Save') do
  find('#add-new-product').click
end

When('I click Create for continue the proses') do
  find('#create_button').click
end

Then('I should see notification that the invoice has successfully created') do
  expect(page).to have_css('div[class="flash-message alert alert-success fade in"]')
end