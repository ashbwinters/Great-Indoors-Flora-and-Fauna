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
    image: "https://images.unsplash.com/photo-1569869207875-f25b0bc299cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80" 
)

plant3 = Houseplant.create(
    common_name: "African Violet",
    scientific_name: "Saintpaulia ionantha",
    sun_requirements: "Any",
    description: "One of the few houseplants that will bloom in low light, African violets grow well in bright east- or north-facing windows. Avoid locations where they will receive direct sunlight in the afternoon—too much sun can burn leaves and prevent the plants from blooming. Turn plants weekly to encourage even growth on all sides.",
    toxic_to_dogs: 0,
    toxic_to_cats: 0,
    image: "https://images.unsplash.com/photo-1581176626106-f50a118c50bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80" 
    )
    
plant4 = Houseplant.create(
    common_name: "Baby Rubber Plant",
   scientific_name: "Peperomia",
    sun_requirements "Any",
    description: "Peperomias are one of the easiest houseplants to grow in your home. Hailing from areas like tropical cloud forests, where humidity is generally over 90%, peperomias prefer areas with 40 to 50% humidity, such as terrariums. Likewise, it is easy to grow peperomia in your bathroom because of the high humidity levels. However, most peperomias perform almost as well in less-moist areas of your house. Because these plants are used to growing on rotting trees and other wood, they are also accustomed to fairly dry and erratic growing conditions. This is why many peperomias are succulent in nature. When growing peperomias in containers, make sure to plant them in well-drained soils. A quick way to kill peperomias is with too much water or too heavy of soil. They also have very few roots, so peperomias generally do best when grown in small containers.",
    toxic_to_dogs: 0,
    toxic_to_cats: 0,
    image:"https://images.unsplash.com/photo-1477554193778-9562c28588c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3450&q=80"
)
            
plant2 = Houseplant.create(
    common_name: "Snake Plant",
    scientific_name: "Sansevieria trifasciata",
    sun_requirements: "Any",
    description: "This plant is extremely drought-tolerant, but its Achilles' heel is too much water. Snake plant needs well-drained potting mix that doesn't hold a lot of water. Ideally, snake plant likes to be in bright but indirect sunlight. However, you can park it in a dark corner and it'll be just fine. In less light, the color in some Sansevieria varieties can become washed out, and taller types can become leggy and floppy, but generally this isn't usually much of a problem.",
    toxic_to_dogs: 1,
    toxic_to_cats: 1,
    image: "https://images.unsplash.com/photo-1513492080443-fe1a22559fd6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1834&q=80" 
)

plant5 = Houseplant.create(
    common_name: "Spider Plant",
    scientific_name: "Chlorophytum comosum",
    sun_requirements: "Indirect Light",
    description: "A spider plant likes bright, indirect light. Avoid direct sunlight as it has the potential to scorch the leaves. If bright indirect light isn't an option, spider plants will grow in low light but they will grow slowly and may not produce plantlets. Spider plants grow well when their soil dries between watering. Check the soil every 4 or 5 days. If it is dry to the touch, water plants thoroughly, allowing excess water to drain out of the bottom of the pot.",
    toxic_to_dogs: 1,
    toxic_to_cats: 1,
    image: "https://images.unsplash.com/photo-1575032558058-683487d88fb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
)

plant6 = Houseplant.create(
    common_name: "Parlor Palm",
    scientific_name: "Chamaedorea elegans",
    sun_requirements: "Medium - Low Light",
    description: "Parlor palm grows well in bright filtered light, like what you'd get at a south- or west-facing window with a sheer curtain. But this adaptable palm also tolerates low light and can thrive in spaces with east- or north-facing windows. Water parlor palm thoroughly (water should escape through pot's drainage hole) when the top inch of soil is dry to the touch. Palms don't like wet soil, so be sure to dump water-filled plant saucers after watering.",
    toxic_to_dogs: 1,
    toxic_to_cats: 1,
    image: "https://images.unsplash.com/photo-1588082672429-606d1cb18af3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1228&q=80"
)

plant7 = Houseplant.create(
    common_name: "Golden Pothos",
    scientific_name: "Epipremnum aureum",
    sun_requirements: "Part Sun, Indirect Sun",
    description: "Most pothos varieties prefer to grow in part sun or bright, indirect light. This yields the lushest plants and prevents them from looking scraggly. However, pothos plants can tolerate extremely low light; just plan on them needing regular training as the stems can become quite long and sparse. In direct, full sun, pothos are likely to burn and bleach out, causing unsightly foliage damage. For the best pothos, start with a good, moisture-retentive potting mix. While a pothos can tolerate just about any amount of water, it doesn't like water conditions to fluctuate. Ideally a pothos likes evenly moist soil that dries out slightly between watering. Try to avoid overwatering or allowing the soil to remain soggy.",
    toxic_to_dogs: 0,
    toxic_to_cats: 0,
    image: "https://images.unsplash.com/photo-1586883573403-cb7ee339755b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
)

plant8 = Houseplant.create(
    common_name: "Aluminum Plant or Friendship Plant",
    scientific_name: "Pilea cadeirei",
    sun_requirements: "Medium - Low Light",
    description: "Pilea grows well in medium light but tolerates low light. A slow-growing plant, pilea maintains its small stature for years. Don't hesitate to move pilea around the house—think of it as a mobile accessory. This easy-care plant is great for adding life to any room. Water pilea when the top inch or so of soil dries out. Like most houseplants, it's better to keep pilea a bit on the dry side rather than get it too wet. It grows well in humid conditions and thrives in a terrarium.   ",
    toxic_to_dogs: 1,
    toxic_to_cats: 1,
    image: "https://www.aspca.org/sites/default/files/styles/medium_image_300x200/public/field/image/plants/aluminum-plant.jpg?itok=1BUoOyUo"
)

plant9 = Houseplant.create(
    common_name: "Nerve Plant",
    scientific_name: "Fittonia verschaffeltii",
    sun_requirements: "Indirect Sun",
    description: "Unlike some houseplants, nerve plant grows best in moist soil, so water it when the soil surface is just barely dry. Empty the plant's drip tray or cachepot after watering, though, to keep this plant from languishing in soggy soil. Humidity is also key. If the leaves start to wither, mist the foliage on a regular basis, run a humidifier, or set the pot on a wet pebble tray that will boost humidity as the water evaporates.",
    toxic_to_dogs: 1,
    toxic_to_cats: 1,
    image: "https://images.unsplash.com/photo-1581176780057-c6b5258ff5a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80"
)

plant10 = Houseplant.create(
    common_name: "Moth or Moon Orchid",
    scientific_name: "Phalaenopsis",
    sun_requirements: "Medium - Bright Light",
    description: "Grow moth orchid in a well-lit spot in your home. Medium or bright light from a south- or west-facing window will encourage this tropical beauty to bloom for long periods of time. (Moth orchid tolerates low light, too, but blooms better when light is brighter.) Too much sunlight can be detrimental, though. Situate an orchid so it's protected from direct afternoon sun that can scorch leaves. Orchids prefer life on the dry side—at least when it comes to their roots. (Humidity is another thing, as you'll learn below.) Pot a Phalaenopsis orchid in orchid bark or sphagnum moss; if you grow it in potting mix, the roots will likely rot and die. Only water the plant when the bark or moss it is planted in dries out—probably every 10 to 14 days. Let water run through the planting medium and out the drainage holes for a couple of minutes each time you tackle this chore. By the way, when the planting medium breaks down and begins to look like soil, it's probably time to repot the plant in a bigger container with fresh bark or moss.",
    toxic_to_dogs: 1,
    toxic_to_cats: 1,
    image: "https://images.unsplash.com/photo-1577378978713-9bebf3db8312?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
)

plant11 = Houseplant.create(
    common_name: "Peace Lily",
    scientific_name: "Spathiphyllum",
    sun_requirements: "Partial Sun - Shade",
    description: "Peace lilies will die in soggy or wet soil, so use a well-drained soil and let the plants dry out a bit between waterings. Peace lilies do fine with the occasional dose of a slow-release fertilizer. In fact, over-fertilization makes them prone to leaf burn, which usually shows itself in yellowing and eventually browning of the leaf tips. It is the result of too much salt in the soil. Avoid it by regularly flushing the soil until the water runs clear. Also, repot your peace lily at least once a year and remove as much of the old soil as you can. When you repot, make sure to only go up one or two pot sizes. Indoors, peace lilies perform best in bright, indirect light. However, they can grow fine in low-light conditions. Keep in mind that lower light conditions results in fewer blossoms and a slightly looser plant habit. To keep the foliage looking its best, wipe down the leaves with a damp cloth every now and then to keep dust from building up.",
    toxic_to_dogs: 0,
    toxic_to_cats: 0,
    image: "https://images.unsplash.com/photo-1526816074440-f2eb05a6e9ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80"
)