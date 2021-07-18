
def gender(name)
  require 'httparty'
  query = [name].to_json

  headers = {
    "Content-Type" => "application/json",
    "Authorization" => "Token 123456789",
    "X-secret" => "a1b2c3d4"
  }
  
  response = HTTParty.post(
    "https://cleaner.dadata.ru/api/v1/clean/name",
    :body => query,
    :headers => headers 
  )
  
  # пример выбора пола из ответа
  gender = response[0]["gender"]
end 
  