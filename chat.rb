require "openai"
require 'dotenv/load'


client = OpenAI::Client.new(access_token: ENV.fetch("CHAT_GPT_KEY"))

pp client
# Prepare an array of messages
messages = [
  { "role" => "system", "content" => "You are a helpful assistant." },
  { "role" => "user", "content" => "Who won the world series in 2020?" },
  { "role" => "assistant", "content" => "The Los Angeles Dodgers won the World Series in 2020." },
  { "role" => "user", "content" => "Where was it played?" }
]

# Print the parameters to debug
# puts "Parameters: #{parameters}"

# Call the API to get the next message from GPT
  api_response = client.chat(
  parameters: {
    model: "gpt-3.5-turbo",
    messages: messages
  }
)
pp api_response


# pp api_response
