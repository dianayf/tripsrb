class Trip
  include Mongoid::Document
  field :status, type: String
  field :price, type: Integer
  field :check_code, type: String
end
