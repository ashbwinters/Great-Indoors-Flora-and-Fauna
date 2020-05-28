const houseplantURL = "http://localhost:3000/houseplants";
const greeting = document.getElementById("greeting");
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
const logoutButton = document.getElementById("log-out");
const showPlantDiv = document.getElementById('show-plant');

home()

function setLoginStatus() {
    greeting.textContent = localStorage.getItem("token")
        ? `Welcome, ${username}!`
        : "Welcome, Guest!"
}

homeButton.addEventListener("click", event => home());

function home() {
    setLoginStatus();
    togglePages(homeDiv);
}

function togglePages (activePage) {
    homeDiv.style.display = "none";
    floraDiv.style.display = "none";
    showPlantDiv.style.display = "none";
    myGardenDiv.style.display = "none";
    signInDiv.style.display = "none";
    createAccountDiv.style.display = "none";
    activePage.style.display = "block";
}

floraButton.addEventListener("click", event => floraPage());

function floraPage() {
    togglePages(floraDiv);
    
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
    togglePages(showPlantDiv);
    displayImage(plantData.image, plantData.common_name);
    displayNames(plantData.common_name, plantData.scientific_name);
    toxicData(plantData.toxic_to_dogs, plantData.toxic_to_cats);
    displayDescription(plantData.description)
    
}

function displayImage(plantImage, plantName) {
    const body = document.querySelector("body");
    body.style.backgroundImage = `url("${plantImage}")`;
}

function displayNames(commonName, scientificName) {
    const common = document.getElementById("common-name");
    const scientific = document.getElementById("scientific");
    common.innerText = `Common Name: ${commonName}`;
    scientific.innerText = ` Scientific Name: ${scientificName}`;
}

function toxicData(dog, cat) {
    const dogs = document.getElementById("dogs");
    const cats = document.getElementById("cats");
    if (!dog) {dogs.innerText = "Not Toxic to Dogs"};
    if (!cat) {cats.innerText = "Not Toxic to Cats"};
}

function displayDescription(plantDescription) {
    const $description = document.getElementById("description");
    $description.innerText = plantDescription;
}

myGardenButton.addEventListener("click", event => showGarden());

function showGarden() {
    togglePages(myGardenDiv)

    // fetch("http://localhost:3000/gardens", {
    // method: "GET",
    // headers: {}
    // })
}

signInButton.addEventListener("click", event => logInPage(event));

function logInPage() {
    togglePages(signInDiv);
    const submitLogin = document.getElementById("login-form");
    submitLogin.addEventListener("submit", event => confirmLogin(event))
}

function confirmLogin(event) {
    event.preventDefault();
    const loginFormData = new FormData(event.target);
    let username = loginFormData.get("username");
    let password = loginFormData.get("password");
    let loginData = {username, password};
    sendLogin(loginData);
}

function sendLogin(loginData) {
    // fetch("http://localhost:3000/login", {
    //     method: "POST",
    //     headers: { "Content-Type": "application/json" },
    //     body: {JSON.stringify(loginData)}
    // })
}

createAccountButton.addEventListener("click", event => newUserPage(event));

function newUserPage() {
   togglePages(createAccountDiv);
}

logoutButton.addEventListener("click", event => logOut());

function logOut() {
    localStorage.removeItem("token");
    home();
}