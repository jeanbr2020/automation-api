# features/api/step_definitions/api_steps.rb
require 'rest-client'
require 'json'
require 'rspec/expectations'

When(/^eu envio uma requisição GET para "(.*)"$/) do |endpoint|
  @response = RestClient.get("https://jsonplaceholder.typicode.com#{endpoint}")
end

When(/^eu envio uma requisição POST para "(.*)" com:$/) do |endpoint, payload|
  @response = RestClient.post(
    "https://reqres.in#{endpoint}",
    JSON.parse(payload),
    content_type: :json
  )
end

Then(/^a resposta deve ter status (\d+)$/) do |status_code|
  expect(@response.code).to eq(status_code.to_i)
end

Then(/^a resposta deve retornar um post de id (\d+)$/) do |id|
    body = JSON.parse(@response.body)
    expect(body['id'].to_s).to eq(id)
  end

Then(/^a resposta deve conter o nome "(.*)"$/) do |name|
  body = JSON.parse(@response.body)
  expect(body['name']).to eq(name)
end