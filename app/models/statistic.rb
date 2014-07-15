class Statistic
  include Mongoid::Document
  field :youth_unemployment, type: BigDecimal
  field :property_rights, type: BigDecimal
  field :fiscal_freedom, type: BigDecimal
  field :monetary_freedom, type: BigDecimal
  field :freedom_from_corruption, type: BigDecimal
end
