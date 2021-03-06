plant_types = [
  {
    id: 1,
    name: 'Sweet Potato',
    category: 'Roots',
  },
  {
    id: 2,
    name: 'Beet',
    category: 'Roots',
  },
  {
    id: 3,
    name: 'Onion',
    category: 'Roots',
  },
  {
    id: 4,
    name: 'Carrot',
    category: 'Roots',
  },
  {
    id: 5,
    name: 'Parsnip',
    category: 'Roots',
  },
  {
    id: 6,
    name: 'Potato',
    category: 'Roots',
  },
  {
    id: 7,
    name: 'Radish',
    category: 'Roots',
  },
  {
    id: 8,
    name: 'Rutabaga',
    category: 'Roots',
  },
  {
    id: 9,
    name: 'Turnip',
    category: 'Roots',
  },
]

plant_types.each do |plant_type|
  begin
    plant = PlantType.new(plant_type)
    puts "Add plant #{plant_type[:name]}, valid: #{plant.valid?}"
    plant.save
  rescue => e
    puts e
  end
end
