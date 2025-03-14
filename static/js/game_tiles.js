// Sample game data (replace with dynamic data from your server or static list)
const games = [
    {
        url: "Masons_asteroids",
        name: "Mason's Asteroids",
        date: "2024-12-03",
    },
    {
        url: "Owens_Super_Awesome",
        name: "Owen's Super Awesome",
        date: "2025-14-03",
    },
    {
        url: "Fabians_platformer",
        name: "Fabian's Platformer",
        date: "2025-14-03",
    },
    {
        url: "Peters_Parkour",
        name: "Peter's Legend of Legend",
        date: "2025-14-03",
    },
    {
        url: "Ritters_Platformer",
        name: "Ritter's Platformer",
        date: "2025-14-03",
    },
    {
        url: "Asteroids",
        name: "Asteroids",
        date: "2024-10-10",
    },
    {
        url: "Knight_platformer",
        name: "Brackeys Knight Platformer",
        date: "2024-10-10",
    },
];
function isRecentGame(dateString) {
    const gameDate = new Date(dateString);
    const currentDate = new Date();
    const diffTime = currentDate - gameDate;
    const diffDays = diffTime / (1000 * 3600 * 24); // Convert time to days
    return diffDays <= 30; // Return true if the game was added in the last 30 days
}
// Function to create game tiles
function createGameTiles() {
    const base_url = "https://jvansant13.github.io/techspecials/"
    const container = document.getElementById('games-container');

    games.forEach(game => {
    // Create the game tile div
    const gameTile = document.createElement('div');

        
    if (isRecentGame(game.date)) {
        gameTile.classList.add('new-game');  // Add "new-game" class for recent games
    }
    gameTile.classList.add('game_tile');
    // Create the anchor tag
    const gameLink = document.createElement('a');
    gameLink.href = base_url + "Games/" + game.url;

    // Create the image
    const gameImage = document.createElement('img');
    gameImage.src = "static/images/game_icons/" + game.url + ".png";
    gameImage.alt = game.name;

    // Create the heading (h2)
    const gameHeading = document.createElement('h2');
    gameHeading.textContent = game.name;

    // Append image and heading to the link
    gameLink.appendChild(gameImage);
    gameLink.appendChild(gameHeading);

    // Append the link to the game tile
    gameTile.appendChild(gameLink);

    // Append the game tile to the container
    container.appendChild(gameTile);
    });
}

// Call the function to create the game tiles on page load
window.onload = createGameTiles;


// const fs = require('fs');
// const path = require('path');

// // Function to get folder details and create a dictionary
// function getFolderDetails(givenFolder) {
//   const folderDict = {};

//   // Read the contents of the given folder
//   const folders = fs.readdirSync(givenFolder);

//   folders.forEach((folder) => {
//     const folderPath = path.join(givenFolder, folder);

//     // Check if it's a directory
//     if (fs.statSync(folderPath).isDirectory()) {
//       // Get the last modified date of the folder
//       const stats = fs.statSync(folderPath);
//       const lastModifiedDate = stats.mtime.toISOString().split('T')[0]; // YYYY-MM-DD format

//       // Add folder information to the dictionary
//       folderDict[folder] = {
//         path: folderPath,
//         name: folder,
//         date: lastModifiedDate
//       };
//     }
//   });

//   return folderDict;
// }

// // Example usage
// const givenFolder = 'Games/';
// const folderDetails = getFolderDetails(givenFolder);
// console.log(folderDetails);
