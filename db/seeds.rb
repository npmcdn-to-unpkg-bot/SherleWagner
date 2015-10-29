# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
##Category.delete_all
#SubCategory.delete_all
#
#categories = %w(APOLLO ARCO GREY HARRISON MOLECULE NOUVEAU ONYX RIBBON\ &\ REED)
#sub_categories = %w(Accessories Fittings Fixtures Hardware Lighting)
#
#categories.each { |category| Category.create(name: category) }
#sub_categories.each { |sub_cat| SubCategory.create(name: sub_cat) }


Sku.delete_all
#Product.delete_all
Style.delete_all
Genre.delete_all
Material.delete_all
Finish.delete_all
ProductSubType.delete_all
ProductType.delete_all
LeverDesign.delete_all
BasinDesign.delete_all
ConsoleCounterVanityDesign.delete_all
WaterClosetHandleDesign.delete_all
DoorTrimDesign.delete_all
WallTrimDesign.delete_all
CeilingLightsDesign.delete_all
WallLightsDesign.delete_all
WallPaperDesign.delete_all
FilterValue.delete_all
Filter.delete_all

finishes = [ 
  { name: 'Polished Nickel', identifier: 'PN' },
  { name: 'Polished Chrome', identifier: 'CP' },
  { name: 'English Silver', identifier: 'ES' },
  { name: 'Antique Pewter', identifier: 'AP' },
  { name: 'Black Pearl', identifier: 'PE' },
  { name: 'Brushed Nickel', identifier: 'BN' },
  { name: 'Brushed Chrome', identifier: 'BC' },
  { name: 'Butler Silver', identifier: 'BS' },
  { name: 'High Polished Platinum', identifier: 'HP' },
  { name: 'Gold Plate', identifier: 'GP' },
  { name: 'Burnished Gold', identifier: 'BG' },
  { name: 'Satin Brass', identifier: 'SB' },
  { name: 'Oil Rubbed Brass', identifier: 'OB' },
  { name: 'English Patina', identifier: 'EP' },
  { name: 'Almond Gold', identifier: 'AL' },
  { name: 'Antique Gold', identifier: 'AG' },
  { name: 'Polished Brass', identifier: 'PB' },
  { name: 'Flemish Patina', identifier: 'FB' },
  { name: 'Rose Gold', identifier: 'RG' }
]


finishes.each do |finish|
  Finish.create(name: finish[:name], identifier: finish[:identifier])
end

materials = [{ type: "China-Hand Painted",
               code: "HANDPAINTED",
               entries: [{name: "Delft — (66DL)", identifier: "66DL" },
                       { name: "Waterlilies — (109W)", identifier: "109W" },
                       { name: "Lotus — (20GR)", identifier: "20GR" },
                       { name: "Lotus — (20BL)", identifier: "20BL" },
                       { name: "Oriental Flowers — (54)", identifier: "54" },
                       { name: "Artichoke — (107A)", identifier: "107A" },
                       { name: "Poppies — (69PP)", identifier: "69PP" },
                       { name: "Peaches — (111P)", identifier: "111P" },
                       { name: "Summer Garden — (51SG)", identifier: "51SG" },
                       { name: "Ming Blossom - (18YL)", identifier: "18YL" },
                       { name: "Ming Blossom — (18PK)", identifier: "18PK" },
                       { name: "Ming Blossom — (18BR)", identifier: "18BR" },
                       { name: "Ming Blossom — (18BL)", identifier: "18BL" },
                       { name: "Garlands And Leaves — (74GL)", identifier: "74GL" },
                       { name: "Mums Bouquet — (56GR)", identifier: "56GR" },
                       { name: "Mums Bouquet — (56BL)", identifier: "56BL" },
                       { name: "Chinoiserie - (60PK)", identifier: "60PK" },
                       { name: "Chinoiserie - (60GR)", identifier: "60GR" },
                       { name: "Chinoiserie - (60BL)", identifier: "60BL" },
                       { name: "Floral Chinoiserie - (61PK)", identifier: "61PK" },
                       { name: "Floral Chinoiserie - (61GR)", identifier: "61GR" },
                       { name: "Floral Chinoiserie - (61BL)", identifier: "61BL" }]
              },
              {type: "China-Hand Decorated",
               code: "CHINADECO",
               entries: [ { name: "Le Jardin - Garnet-89GA", identifier: "Garnet-89GA" },
                        { name: "Le Jardin - Greige/Taupe-89GG", identifier: "Greige/Taupe-89GG" },
                        { name: "Le Jardin - Sepia-89SP", identifier: "Sepia-89SP" },
                        { name: "Le Jardin - Light Blue-89LB", identifier: "Light Blue-89LB" },
                        { name: "Le Jardin - Charcoal-89CH", identifier: "Charcoal-89CH" },
                        { name: "Le Jardin - Blue-89BL", identifier: "Blue-89BL" },
                        { name: "Le Jardin -Sage-89SG", identifier: "Sage-89SG" },
                        { name: "Acorn & Oakleaf - Garnet-99GA", identifier: "Garnet-99GA" },
                        { name: "Acorn & Oakleaf - Greige/Taupe-99GG", identifier: "Greige/Taupe-99GG" },
                        { name: "Acorn & Oakleaf - Sepia-99SP", identifier: "Sepia-99SP" },
                        { name: "Acorn & Oakleaf - Light Blue-99LB", identifier: "Light Blue-99LB" },
                        { name: "Acorn & Oakleaf - Charcoal-99CH", identifier: "Charcoal-99CH" },
                        { name: "Acorn & Oakleaf - Blue-99BL", identifier: "Blue-99BL" },
                        { name: "Acorn & Oakleaf -Sage-99SG", identifier: "Sage-99SG" }]
              },
              {type: "China-Metal Plated",
               code: "GLAZE",
               entries: [ { name: "Burnished Gold-14GP", identifier: "14GP" },
                        { name: "Burnished Platinum-15PL", identifier: "15PL" },
                        { name: "Highly Polished Platinum-17HP", identifier: "17HP" },
                        { name: "Gold Accents-24GP", identifier: "24GP" },
                        { name: "Platinum Accents-24PL", identifier: "24PL" }]
              },
              {type: "Marble",
               
               entries: [{ name: "ROSE AURORA (RSAU)", identifier: "RSAU" },
                       { name: "ROSE DU MONTE (RSDM)", identifier: "RSDM" },
                       { name: "CARARRA (CARR)", identifier: "CARR" },
                       { name: "MARIANELLA (MARI)", identifier: "MARI" },
                       { name: "ANTIQUE WHITE (ANWH)", identifier: "ANWH" },
                       { name: "ANTIQUE BROWN (ANBR)", identifier: "ANBR" },
                       { name: "ESTREMOZ (ESTR)", identifier: "ESTR" },
                       { name: "VERDI VIANA (VERD)", identifier: "VERD" },
                       { name: "CREMA MARFIL (CREMA)", identifier: "CREMA" },
                       { name: "BELGIAN BLACK (BLGB)", identifier: "BLGB" },
                       { name: "ROJO ALICANTE (ROJO)", identifier: "ROJO" },
                       { name: "BLACK MARBLE (BLMA)", identifier: "BLMA" },
                       { name: "ROSA LEVANTO (RSLV)", identifier: "RSLV" },
                       { name: "IMPERADOR BROWN (IMBR)", identifier: "IMBR" },
                       { name: "CARNICO GREY (CRGR)", identifier: "CRGR" },
                       { name: "ARABESCATO (ARAB)", identifier: "ARAB" },
                       { name: "NEGRO MARQUINA (NEMA)", identifier: "NEMA" },
                       { name: "PORTORO (PORT)", identifier: "PORT" },
                       { name: "VALVERDE (VLVD)", identifier: "VLVD" },
                       { name: "CALACATTA (CALA)", identifier: "CALA" },
                       { name: "PORT LAURENT (PTLA))", identifier: "PTLA" }]
              },
              {type: "Semi-precious Stone",
              code: "SEMI",
              entries: [{ name: "ROCK CRYSTAL", identifier: "RKCR" },
                        { name: "ROSE\ QUARTZ\ \(RSQU\)", identifier: "RSQU" },
                        { name: "AMETHYST\ \(AMET\)", identifier: "AMET" }]
                    },
              { type: "Semi-precious Laminate",
               code: "SLSL",
               entries: [{ name: "LAPIS\ LAZULI\ \(LAPI\)", identifier: "LAPI" },
                         { name: "MALACHITE\ \(MALA\)", identifier: "MALA" },
                         { name: "JASPER\ \(JASP\)", identifier: "JASP" },
                         { name: "BROWN\ TIGER\ EYE\ \(BRTI\)", identifier: "BRTI" },
                         { name: "BLUE\ TIGER\ EYE\ \(BLTI\)", identifier: "BLTI" },
                         { name: "RHODOCHROSITE\ \(RHOD\)", identifier: "RHOD" } ]
                    },
              {type: "Onyx", 
               code: "ONYX",
               entries: [ { name: "BLACK\ ONYX\ \(BKOX\)", identifier: "BKOX" },
                        { name: "WHITE\ ONYX\ \(WHOX\)", identifier: "WHOX" },
                        { name: "HONEY\ ONYX\ \(HNOX\)", identifier: "HNOX" },
                        { name: "GREEN\ ONYX\ \(GROX\)", identifier: "GROX" },
                        { name: "PINK\ ONYX\ \(PKOX\)", identifier: "PKOX" },
                        { name: "BROWN\ ONYX\ \(BROX\)",  identifier: "BROX" }]
                    }
              ]
materials.each do |material|
  type = material[:type]
  code = material[:code]
  names = material[:names]
  material[:entries].each do |entry|
    Material.create(material_type:type, name: entry[:name], code:code, identifier: entry[:identifier] )
  end
end

china_colors =  [ { name: "Sand", identifier: "SD" },
        { name: "White", identifier: "WH" },
        { name: "Black", identifier: "BL" }]

china_colors.each do |china_color|
  name = china_color[:name]
  identifier = china_color[:identifier]
  ChinaColor.create(name: name, identifier: identifier)
end



filters = %w(handle\ design)

filters.each do |filter|
  Filter.create(name: filter)
end








#materials = %w(China Metal Marble SemiPrecious_Stone Onyx Florentine\ Finish Beaded Cut\ Crystal Gesso\ Wood)
#colors = { marble:  
#            %w(ROSE\ AURORA\ \(RSAU\)
#            ROSE\ DU\ MONTE\ \(RSDM\)
#            CARARRA\ \(CARR\)
#            MARIANELLA\ \(MARI\)
#            ANTIQUE\ WHITE\ \(ANWH\)
#            ANTIQUE\ BROWN\ \(ANBR\)
#            ESTREMOZ\ \(ESTR\)
#            VERDI\ VIANA\ \(VERD\)
#            CREMA\ MARFIL\ \(CREMA\)\ 
#            BELGIAN\ BLACK\ \(BLGB\)
#            ROJO\ ALICANTE\ \(ROJO\)
#            BLACK\ MARBLE\ \(BLMA\)
#            ROSA\ LEVANTO\ \(RSLV\)
#            IMPERADOR\ BROWN\ \(IMBR\)
#            CARNICO\ GREY\ \(CRGR\)
#            ARABESCATO\ \(ARAB\)
#            NEGRO\ MARQUINA\ \(NEMA\)
#            PORTORO\ \(PORT\)
#            VALVERDE\ \(VLVD\)
#            CALACATTA\ \(CALA\)
#            PORT\ LAURENT\ \(PTLA\)),
#
#          metal:
#            %w(satin\ brass
#            polished\ brass
#            brushed\ chrome
#            polished\ chrome
#            brushed\ nickel
#            polished\ nickel
#            flemish\ patina
#            english\ patina
#            verdi\ antique
#            oil\ rubed brass
#            antique\ pewter
#            gold\ plate
#            antique\ gold
#            burnished\ gold
#            english\ silver
#            burnished\ platinum
#            butler\ silver),
#          china:
#            %w(SOLID\ PLAIN\ COLORS
#            HAND\ DECORATE
#            HAND\ PAINTED
#            GOLD\ PLATINUM),
#           semiprecious_stone:
#            %w(ROCK\ CRYSTAL\ \(RKCR\)
#            ROSE\ QUARTZ\ \(RSQU\)
#            AMETHYST\ \(AMET\)
#            LAPIS\ LAZULI\ \(LAPI\)
#            MALACHITE\ \(MALA\)
#            JASPER\ \(JASP\)
#            BROWN\ TIGER\ EYE\ \(BRTI\)\ 
#            BLUE\ TIGER\ EYE\ \(BLTI\)
#            RHODOCHROSITE\ \(RHOD\)),
#          onyx:
#            %w(BLACK\ ONYX\ \(BKOX\)
#            WHITE\ ONYX\ \(WHOX\)
#            HONEY\ ONYX\ \(HNOX\)
#            GREEN\ ONYX\ \(GROX\)
#            PINK\ ONYX\ \(PKOX\)
#            BROWN\ ONYX\ \(BROX\))
#}
#materials.each do |material|
#  Material.create(name: material)
#end

#colors.each do |material, colors|
#  material = Material.where("lower(name) = ?",  material.to_s.downcase).first
#  colors.each do |color|
#    Color.create( name: color, material: material)
#  end
#end

types = %w(Fittings Accessories Fixtures Hardware Lights Wallcoverings)
sub_types = { 
  fittings:
    %w(BASIN\ AND\ BAR\ SETS
    TUB\ AND\ SHOWER\ COMPONENTS
    WATER\ CLOSET\ AND\ BIDET\ FITTINGS),
  accessories:
    %w(BATHROOM
    COUNTER\ TOPS
    MEDICISNE\ CABINETS),
  fixtures:
    %w(SINKS
    PEDESTAL
    CONSOLES,\ COUNTERS\ AND\ VANITIES
    TUBS
    WAER\ CLOSET\ AND\ BIDET\ FIXTURES),
  lights:
    %w(CEILING\ LIGHTS
    CABINET\ AND\ DRAWER\ PULLS),
  wallcoverings:
    %w(WALLPAPERS
    CERAMIC
    MARBLE),
  hardware:
    %w(LEVERS\ AND\ KNOBS CABINET\ &\ DRAWER\ PULLS DOOR\ TRIM WALL\ TRIM)
}

types.each do |type|
  ProductType.create(name: type)
end

sub_types.each do |type, sub_types|
  type = ProductType.where("lower(name) = ?",  type.to_s.downcase).first
  sub_types.each do |sub_type|
    ProductSubType.create( name: sub_type, product_type: type)
  end
end

#genres = %w(Ornate Traditional Classic Mid_Century Contemporary)
#styles = {
#            ornate: 
#              %w(LOUIS\ SEIZE
#              CHERUB
#              SWAN
#              DOLPHIN
#              FILIGREE
#              1040\ LEAVES\ RSQU),
#            traditional:
#              %w(ACANTHUS
#              RIBBON\ &\ REED
#              CUT\ CRYSTAL
#              CLASSIC
#              MING\ BLOSSOM
#              ONYX
#              1029\ ROCK\ CRYSTAL),
#            classic:
#              %w(HARRISON
#              GREY
#              CLASSIC
#              MELON),
#            Mid_Century:
#              %w(APOLLO
#              NOUVEAU
#              COSMOS
#              MOLECULES
#              PYRAMID),
#            Contemporary:
#              %w(ARCO
#              NAIAD
#              AQUEDUCT
#              ARBOR)
#}
#genres.each do |type|
#  Genre.create(name: type.humanize)
#end
#
#styles.each do |genre, styles|
#  genre = Genre.where("lower(name) = ?",  genre.to_s.humanize.downcase).first
#  styles.each do |style|
#    Style.create( name: style, genre: genre)
#  end
#end

genres_styles = [
  { genre_name: "Contemporary",
    styles: [ "Arco", "Molecule", "Apollo", "Nouveau" ]
  },
  { genre_name: "Classic",
    styles: [ "Harrison", "Grey" ]
  },
  { genre_name: "Traditional",
    styles: [ "Ribbon & Reed", "Onyx", "Scalloped China" ]
  },
  { genre_name: "Ornate",
    styles: [ "Dolphin", "Swan", "Semiprecious Leaves" ]
  }
]

genres_styles.each do |genre_style|
  genre = Genre.create(name: genre_style[:genre_name])
  genre_style[:styles].each do |style|
    genre.styles << Style.create(name: style)
  end
end

filters = [
  { name: "Handle Design",
    filter_values: [ "Levers", "Knobs" ]
  },
  { name: "Sink Design",
    filter_values: [ "Under Edge", "Over Edge" ]
  },
  { name: "Console or Counter",
    filter_values: ["Console", "Counter" ]
  },
  { name: "Bidet or Water Closet",
    filter_values: [ "Bidet", "Water Closet" ]
  },
  { name: "Ceiling Light Design",
    filter_values: [ "Pendant", "Chandelier", "Flush Mount" ]
  },
  { name: "Wall Light Design",
    filter_values: [ "Sconce", "Panel Light" ]
  },
  { name: "Wallpaper Design",
    filter_values: [ "Toiles", "Floral", "Geometric" ]
  },
  { name: "Wallpaper Color",
    filter_values: [ "Neutral", "Blue", "Pink", "Yellow", "Black", "Red", "Green", "Metallic" ]
  }
]

filters.each do |filter|
  this_filter = Filter.create( name: filter[:name] )
  filter[:filter_values].each do |filter_value|
    this_filter.filter_values << FilterValue.create(name: filter_value)
  end
end




#overall_colors = %w(Neutral Blues Pinks Yellows Blacks Reds Greens Metallics)
#
#overall_colors.each do |color|
#  OverallColor.create(name: color)
#end

#lever_designs = %w(Handle Knob)
#basin_designs = %w(Under\ edges Over\Edge)
#ccv_designs = %w(Console Counter Vanity)
#wc_handle_designs = %w(Drop\ pull Bar\ pull)
#door_trim_designs = %w(Push\ plates	Back\ Plates	Hinges	Latches	Thumb\ turns	Flush\ pulls	Key\ hole\ cover)
#wall_trim_designs = %w(Door\ stops	Bell\ Covers	Electrical\ plates)
#ceiling_lights_designs = %w(Chandeliers	Flush\ Mounted)
#wall_lights_designs = %w(Sconces Panel\ lights)
#wallpaper_designs = %w(Toiles Floral Geometric)
#
#lever_designs.each { |design| LeverDesign.create(name: design) }
#basin_designs.each { |design| BasinDesign.create(name: design) }
#ccv_designs.each { |design| ConsoleCounterVanityDesign.create(name: design) }
#wc_handle_designs.each { |design| WaterClosetHandleDesign.create(name: design) }
##Not for water closets. should be for drawer pulls
#door_trim_designs.each { |design| DoorTrimDesign.create(name: design) }
#wall_trim_designs.each { |design| WallTrimDesign.create(name: design) }
#ceiling_lights_designs.each { |design| CeilingLightsDesign.create(name: design) }
#wall_lights_designs.each { |design| WallLightsDesign.create(name: design) }
#wallpaper_designs.each { |design| WallPaperDesign.create(name: design) }
##add accessories bathrooms, countertops filters

num_products = 200

#num_products.times do
#  product_name = Faker::Commerce.product_name
#  long_description = Faker::Lorem.paragraph(5, false, 4)
#  product_number = Faker::Company.duns_number
#  product_type = ProductType.all.sample
#  product_sub_type = product_type.product_sub_types.sample
#  product = Product.create(name: product_name,
#                           long_description: long_description,
#                           number: product_number,
#                           product_type: product_type,
#                           product_sub_type: product_sub_type)
#  num_skus = rand(10)
#  num_skus.times do
#    sku_number = Faker::Company.duns_number
#    material = Material.all.sample
#    color = material.colors.sample
#    genre = Genre.all.sample
#    style = genre.styles.sample
#    product_type = ProductType.all.sample
#    product_sub_type = product_type.product_sub_types.sample
#    sku = Sku.create(material: material,
#               color: color,
#               genre: genre,
#               style: style,
#               number: sku_number)
#
#    case product.product_sub_type.name.downcase
#    when 'basin and bar sets'
#      sku.lever_design = LeverDesign.all.sample
#    when 'sinks'
#      sku.basin_design = BasinDesign.all.sample
#    when 'counter, console, vanity'
#      sku.counter_console_vanity_design = CounterConsoleVanity.all.sample
#    when 'door trim'
#      sku.door_trim_design = DoorTrimDesign.all.sample
#    when 'wall trim'
#      sku.wall_trim_design = WallTrimDesign.all.sample
#    when 'ceiling lights'
#      sku.ceiling_lights_design = CeilingLightsDesign.all.sample
#    when 'wall lights'
#      sku.wall_lights.design = WallLightsDesign.all.sample
#    when 'wallpaper'
#      sku.wallpaper_design = WallPaperDesign.all.sample
#    end
#    sku.save
#
#
#
#    product.skus << sku = sku
#  end
#end


