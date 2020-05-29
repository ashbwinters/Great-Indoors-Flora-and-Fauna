const mainURL = "http://localhost:3000/";
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
        ? `Welcome Back!`
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
    
    fetch(`${mainURL}houseplants`)
    .then(response => response.json())
    .then(results => displayAllPlants(results, "flora-page"))
}    

function displayAllPlants(results, listId) {
    document.querySelectorAll("li").forEach(item => item.remove())
    results.forEach(result => {
        const ul = document.getElementById(listId);
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
    addPlantIdToAddButton(plantData.id)
}

function displayImage(plantImage) {
    showPlantDiv.style.backgroundImage = `url("${plantImage}")`;
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

function addPlantIdToAddButton(plantId) {
    const addButton = document.querySelector(".add-button");
    addButton.id = plantId;
    addButton.addEventListener("click", event => addPlantToGarden(event.target))
}

function addPlantToGarden(target) {
    fetch("http://localhost:3000/gardens", {
        method: "POST",
        headers: { 
            "Authorization": `Bearer ${localStorage.getItem("token")}`,
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            garden: { houseplant_id: target.id }
        })
    }).then(response => response.json())
        .then(() => {
            target.innerContent = "Added to Garden"
        })
}

myGardenButton.addEventListener("click", event => showGarden());

function showGarden() {
    togglePages(myGardenDiv)

    fetch(`http://localhost:3000/gardenIndex`, {
    method: "GET",
    headers: { "Authorization": `Bearer ${localStorage.getItem("token")}` }
    }).then(response => response.json())
        .then(userGardenData => showGardenPlants(userGardenData))
}

function showGardenPlants(results) {
    const gardenWelcome = document.getElementById("garden-welcome");
    if (results.length == 0) {
        gardenContent.innerText = "Visit the Flora Page to Create Your Indoor Garden!"}
    else { 
        let innerPlantData = results.map(result => result.houseplant)
        displayAllPlants(innerPlantData, "garden-contents")
    }
}

signInButton.addEventListener("click", event => logInPage(event));

function logInPage() {
    togglePages(signInDiv);
}
    
const submitLogin = document.getElementById("login-form");
submitLogin.addEventListener("submit", event => {
    event.preventDefault();
    confirmLoginData(event)
})


function confirmLoginData(event) {
    const loginFormData = new FormData(event.target);
    let username = loginFormData.get("username");
    let password = loginFormData.get("password");
    sendLogin(username, password);
}

function sendLogin(username, password) {
    fetch("http://localhost:3000/login", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({username, password})
    }).then(response => response.json())
        .then(result => {
            const {token} = result;
            localStorage.setItem("token", token)
        }).catch(error => console.log(error.message))
        home();
}

createAccountButton.addEventListener("click", event => newUserPage(event));

function newUserPage() {
   togglePages(createAccountDiv);
}

const submitAccount = document.getElementById("create-account-form");

submitAccount.addEventListener("submit", event => {
    event.preventDefault();
    confirmAccountData(event)
})

function confirmAccountData(event) {
    const createFormData = new FormData(event.target);
    let username = createFormData.get("username");
    let password = createFormData.get("password");
    sendAccount(username, password);
}

function sendAccount(username, password) {
    fetch("http://localhost:3000/users", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({user: 
            {username, password}
        }),
    }).then(() => {
        sendLogin(username, password)
    }).catch(error => console.error(error.message))
}

logoutButton.addEventListener("click", event => logOut());

function logOut() {
    localStorage.removeItem("token");
    home();
}