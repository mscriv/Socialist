class Country
  include Mongoid::Document
  field :name, type: String
  field :rank, type: Integer
  field :score, type: BigDecimal
  field :facts, type: String
end
