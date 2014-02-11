json.array!(@ekiselevas) do |ekiseleva|
  json.extract! ekiseleva, 
  json.url ekiseleva_url(ekiseleva, format: :json)
end