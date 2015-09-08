class PhysicalAddress < Address
  validates :street, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
end
