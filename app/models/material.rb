class Material < ActiveRecord::Base
#  has_and_belongs_to_many :materialed_product_groups, class_name: 'Materials', join_table: 'materials_product_groups'
  has_and_belongs_to_many :materialed_products, class_name: 'Material', join_table: 'materials_products'
  #has_and_belongs_to_many :inserted_products, class_name: 'Materials', join_table: 'inserts_products'

  @@codes_arr 
  @@materials_array = nil

  def self.codes
    @@codes_arr ||= self.pluck(:code).uniq.compact
  end

  def self.identifiers_for code
    self.where(code: code).pluck(:identifier).uniq.compact
  end

  def self.materials_arr
    if @@materials_array.nil?
      @@materials_array = []
      codes.each do |code|
        @@materials_array << { code: code, identifiers: identifiers_for(code) }
      end
    end
    @@materials_array

  end

  def self.add_materials_to(product, code)
    if code
      product.materials = Material.where(code: code)
    end
  end

  def burnished?
    identifier == "15PL" ||
      identifier == "14GP" ||
      identifier.last(2) == "-G" ||
      identifier.last(2) == "-P"
  end
  
  def polished?
    identifier == "17HP" ||
      identifier.last(2) == "HP"
  end
  
end

