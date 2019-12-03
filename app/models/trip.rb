class Trip
  include Mongoid::Document
  field :status, type: String
  field :price, type: Float
  field :check_code, type: String
  field :passenger, type: Hash
  field :driver, type: Hash
  field :start, type: Hash
  field :end, type: Hash
  field :country, type: Hash
  field :city, type: Hash
  field :car
  field :createdAt
  field :updatedAt
  field :driver_location, type: Hash
end
