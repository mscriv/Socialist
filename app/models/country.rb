class Country
  include Mongoid::Document
  field :name, type: String
  field :rank, type: Integer
  field :score, type: BigDecimal
  field :facts, type: String 
  
  validates_presence_of :name
  
  embeds_many :categories
  embeds_many :statistics
  
  
end
