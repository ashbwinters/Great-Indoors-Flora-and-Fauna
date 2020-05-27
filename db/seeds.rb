# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

plant1 = Houseplant.create(
    common_name: "Aloe Vera",
    scientific_name: "Aloe Vera",
    sun_requirements: "Full Sun",
    description: "Aloe vera is an eye-catching perennial that displays lance-shape succulent leaves decorated with white spots and edged with small whitish teeth. The leaves are known for their gel-like sap often used to soothe burns and moisturize skin. Native to hot, dry regions of Africa, this herbaceous perennial prefers frost-free, sunny, well-drained sites where the night temperature never dips below 50 degrees F. Thankfully, adaptable aloe vera makes a great houseplant; use it on its own or let it add vertical interest to a container of vining houseplants, such as philodendron or ivy. Exceptionally easy to grow, aloe vera is a good choice for a new gardener.",
    toxic_to_dogs: 1,
    toxic_to_cats: 1,
    image: "https://unsplash.com/photos/W79gBSNn2Kc" 
)

plant2 = Houseplant.create(
    common_name: "Snake Plant",
    scientific_name: "Sansevieria trifasciata",
    sun_requirements: "Any",
    description: "This plant is extremely drought-tolerant, but its Achilles' heel is too much water. Snake plant needs well-drained potting mix that doesn't hold a lot of water. Ideally, snake plant likes to be in bright but indirect sunlight. However, you can park it in a dark corner and it'll be just fine. In less light, the color in some Sansevieria varieties can become washed out, and taller types can become leggy and floppy, but generally this isn't usually much of a problem.",
    toxic_to_dogs: 1,
    toxic_to_cats: 1,
    image: "https://unsplash.com/photos/0Qar87UXlGA" 
)

plant3 = Houseplant.create(
    common_name: "African Violet",
    scientific_name: "Saintpaulia ionantha",
    sun_requirements: "Any",
    description: "One of the few houseplants that will bloom in low light, African violets grow well in bright east- or north-facing windows. Avoid locations where they will receive direct sunlight in the afternoon—too much sun can burn leaves and prevent the plants from blooming. Turn plants weekly to encourage even growth on all sides.",
    toxic_to_dogs: 0,
    toxic_to_cats: 0,
    image: "https://unsplash.com/photos/qyP1ChHhGPM" 
)


mine = Garden.create(houseplant_id: 2, user_id: 1)