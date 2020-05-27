const houseplantURL = "http://localhost:3000/houseplants";
const homeButton = document.getElementById("home");
const homeDiv = document.getElementById("home-page");
const floraButton = document.getElementById('plants');
const floraDiv = document.getElementById('flora-page');
const myGardenButton = document.getElementById("garden");
const myGardenDiv = document.getElementById("my-garden-page");
const signInButton = document.getElementById("login");
const signInDiv = document.getElementById("login-page");
const createAccountButton = document.getElementById("create");
const createAccountDiv = document.getElementById("create-account");
const showPlantDiv = document.getElementById('show-plant');

home()

homeButton.addEventListener("click", event => home());

function home () {
    floraDiv.style.display = "none";
    myGardenDiv.style.display = "none";
    showPlantDiv.style.display = "none";
    homeDiv.style.display = "block";
}

floraButton.addEventListener("click", event => floraPage());

function floraPage() {
    homeDiv.style.display = "none";
    floraDiv.style.display = "block";
    
    fetch(houseplantURL)
    .then(response => response.json())
    .then(results => displayAllPlants(results))
}    

function displayAllPlants(results) {
    results.forEach(result => {
        const ul = document.getElementById('flora-page');
        const li = document.createElement('li');
        li.innerHTML = `
        <img src="${result.image}" alt="${result.common_name}" width="250" height"250">
        <a id="plant-${result.id}">${result.common_name}</a>
        `
        ul.appendChild(li)
        document.getElementById(`plant-${result.id}`).addEventListener("click", event => displaySinglePlant(event, result))
    });
}

function displaySinglePlant(event, plantData) {
    floraDiv.style.display = 'none';
    showPlantDiv.style.display = 'block'
    displayImage(plantData.image, plantData.common_name);
    displayNames(plantData.common_name, plantData.scientific_name);
    toxicData(plantData.toxic_to_dogs, plantData.toxic_to_cats);
    displayDescription(plantData.description)
    
}

function displayImage(plantImage, plantName) {
    const $image = document.getElementById("image");
    $image.src = plantImage;
    $image.alt = plantName;
}

function displayNames(commonName, scientificName) {
    const common = document.getElementById("common-name");
    const scientific = document.getElementById("scientific");
    common.innerText = commonName;
    scientific.innerText = scientificName;
}

function toxicData(dog, cat) {
    
}

function displayDescription(plantDescription) {
    const $description = document.getElementById("description");
    $description.innerText = plantDescription;
}

myGardenButton.addEventListener("click", event => showGarden());

function showGarden() {
    
}

signInButton.addEventListener("click", event => logIn());

function logIn() {
    
}

createAccountButton.addEventListener("click", event => newUser());

function newUser() {

}
