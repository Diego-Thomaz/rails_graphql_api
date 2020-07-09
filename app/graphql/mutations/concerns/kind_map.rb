module Mutations::Concerns::KindMap
  extend ActiveSupport::Concern

  def prepare_kinds(attributes)
    kinds = Kind.where(id: attributes[:kinds].map { |x| x[:id].to_i })
    attributes[:kinds] = kinds
    attributes
  end
end