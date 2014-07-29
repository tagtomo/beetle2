json.array!(@memos) do |memo|
  json.extract! memo, :id, :number, :title, :content
  json.url memo_url(memo, format: :json)
end
