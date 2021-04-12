Given('I am on home page') do
  step "I can access enjoei homepage"
  page.find(:xpath, "//button[@aria-label= 'Fechar modal']").click if page.has_xpath?("//button[@aria-label= 'Fechar modal']")
end

Given('I choose some maximum product price') do
  page.find(:xpath, "//*[contains(text(), 'descontos')]").click
  expect(page.has_xpath?("//*[contains(text(), '% off')]")).to be_truthy
  page.find(:button, "Preço").click
  @max_price = Faker::Number.number(digits: 3)
  page.find(:xpath, "//*[@name = 'price_max']").send_keys(@max_price)
end

When('I click in this price category') do
  page.find(:button, "Aplicar").click
end

Then('I should only see products no more expensive than the choosen price') do
  all("span[class = 'c-product-card__price-sale']").each do |p|
    expect(p.text.split[1].to_i).to be <= @max_price
    log("O preço do produto é #{p.text}\n e espera-se que seja menor ou igual a #{@max_price}")
  end
end