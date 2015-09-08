class IpAddress < Address
  validates :ip_address, presence: true
end
