json.array!(@kitties) do |kitty|
  json.extract! kitty, :id, :title
  json.url kitty_url(kitty, format: :json)
end
