json.array!(@hoges) do |hoge|
  json.extract! hoge, :id, :hoge
  json.url hoge_url(hoge, format: :json)
end
