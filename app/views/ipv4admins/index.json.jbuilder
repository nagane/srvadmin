json.array!(@ipv4admins) do |ipv4admin|
  json.extract! ipv4admin, :id, :ip_statu, :ip_address, :Host, :Note
  json.url ipv4admin_url(ipv4admin, format: :json)
end
