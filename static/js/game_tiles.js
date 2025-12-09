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
    {
        url: "SpaceShooter",
        name: "Space Shooter",
        date: "2025-12-03",
    },
    {
        url: "dodge_the_creeps",
        name: "Dodge The Creeps",
        date: "2025-12-09"
    }
];

function createGameTiles() {
    const base_url = "https://jvansant13.github.io/techspecials/"
    const container = document.getElementById('games-container');
    games.forEach(game => {
    const gameTile = document.createElement('div');
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