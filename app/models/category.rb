class Category
  include Mongoid::Document
  field :name, type: String
  
  embedded_in :country, inverse_of: :categories
end
