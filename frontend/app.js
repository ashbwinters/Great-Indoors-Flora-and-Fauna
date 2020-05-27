const houseplantURL = "http://localhost:3000/houseplants";
const homeDiv = document.getElementById("home-page");
const floraDiv = document.getElementById('flora-page');
const myGardenDiv = document.getElementById("my-garden-page")
const showPlantDiv = document.getElementById('show-plant');

home()

function home () {
    console.log("I am being called")
    floraDiv.style.display = "none";
    myGardenDiv.style.display = "none";
    showPlantDiv.style.display = "none";
    homeDiv.style.display = "block";
}

function newUser() {
    
}
floraDiv.addEventListener("click", event => floraPage());

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
    console.log(plantData)
}

function displayImage(plantImage) {

}

function displayNames() {

}

function ToxicData() {

}

function diplayDescription() {

}