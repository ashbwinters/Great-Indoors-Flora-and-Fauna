const houseplantURL = "http://localhost:3000/houseplants";
const homediv = document.getElementById("home-page");
const floradiv = document.getElementById('flora-page');
const myGardendiv = document.getElementById("")
const showPlant = document.getElementById('show-plant');


function home () {
    
}

function newUser() {
    
}

function floraPage() {

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
    floradiv.style.display = 'none';
    showPlant.style.display = 'block'
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