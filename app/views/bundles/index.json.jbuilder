json.array!(@bundles) do |bundle|
  json.extract! bundle, :id, :name
  json.url bundle_url(bundle, format: :json)
end
