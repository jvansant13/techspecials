const godotscripts = [
    {
        script: "topdown_player.gd",
        img: "icon_lever.png",
        name: "Topdown Movement",
    },
    {
        script: "topdown_animations.gd",
        img: "icon_character.png",
        name: "Topdown Animations",
    },
    {
        script: "health_component.gd",
        img: "icon_heart.png",
        name: "Basic Hitbox",
    },
    {
        script: "hurtbox_component.gd",
        img: "icon_hammer.png",
        name: "Basic Hitbox",
    },
    {
        script: "hitbox_component.gd",
        img: "icon_area_damage.png",
        name: "Basic Hitbox",
    },
    {
        script: "coins.gd",
        img: "icon_coin.png",
        name: "Coins",
    },

    // Add more scripts here as needed
];

// Define the base URL locations for scripts and images
const script_locations = "/static/code/";
const img_locations = "/static/images/icons/";

// Get the container where the list of scripts will be displayed
const scriptList = document.getElementById('script-list');

const defaultActiveScript = godotscripts[0].script;
// Loop through the `godotscripts` array and generate list items dynamically
godotscripts.forEach(scriptData => {
    // Create a list item
    const li = document.createElement('li');
    
    // Create an image element for the script
    const img = document.createElement('img');
    img.src = `${img_locations}${scriptData.img}`;  // Image source is constructed from the img_locations and the img filename
    img.alt = scriptData.name;  // Use the script name as alt text for the image
    // img.style.width = '30px';  // Set the width of the image (optional)
    // img.style.height = '30px'; // Set the height of the image (optional)
    // img.style.marginRight = '10px';  // Add some spacing between the image and text

    // Create a span element for the script name
    const scriptName = document.createElement('H2');
    scriptName.textContent = scriptData.name; // Use the name from the script data
    
    // // Create a span element for the script author
    // const scriptAuthor = document.createElement('span');
    // scriptAuthor.textContent = ` by ${scriptData.author}`;  // Display the author's name
    
    // Append the image and script name to the list item
    li.appendChild(img);
    li.appendChild(scriptName);
    // li.appendChild(scriptAuthor);

    // Add an event listener to the list item to fetch and display the script content when clicked
    li.addEventListener('click', () => {
        // Remove active class from all items
        document.querySelectorAll('#script-list li').forEach(item => item.classList.remove('active'));
        
        // Add active class to the clicked item
        li.classList.add('active');
        
        // Fetch and display the content for the clicked script
        fetchScript(scriptData.script);
    });

    // If the current script is the default active script, add the active class
    if (scriptData.script === defaultActiveScript) {
        li.classList.add('active');
        fetchScript(scriptData.script);  // Fetch and display content for the default active script
    }
    // Append the list item to the script list
    scriptList.appendChild(li);
});

// Function to fetch and display the content of a GDScript
function fetchScript(scriptName) {
    const scriptUrl = script_locations + scriptName;  // Construct the URL for the script file
    fetch(scriptUrl)
        .then(response => response.text())
        .then(scriptContent => {
            const codeBlock = document.querySelector('#script-content code');
            codeBlock.textContent = scriptContent;  // Add the script content to the code block
            Prism.highlightElement(codeBlock);  // Highlight the syntax using Prism.js
        })
        .catch(error => console.error('Error fetching script content:', error));
}
//  // List all files in the '/static/code/' folder (Manually entered)
// const gdscripts = [
// "player_movement.gd",
// "hitbox_component.gd",
// "hurtbox_component.gd",
// "health_component.gd",
// ];


// const godotscripts = [
//     {
//         script: "player_movement.gd",
//         img: "movement.png",
//         name: "Topdown Movement",
//         author: "Me"
//     },
//     {
//         script: "hitbox_component.gd",
//         img: "hitbox.png",
//         name: "Basic Hitbox",
//         author: "Me"
//     },
// ];

// const script_locations = "/static/code/";
// const img_locations = "/static/images/icons/"

// const scriptList = document.getElementById('script-list');

// // Filter only .gd files and list them
// gdscripts.filter(file => file.endsWith('.gd')).forEach(script => {
//     const li = document.createElement('li');
//     li.textContent = script;
//     li.addEventListener('click', () => fetchScript(script));
//     scriptList.appendChild(li);
// });

// // Fetch and display the content of a GDScript
// function fetchScript(scriptName) {
//     const scriptUrl = repoUrl + scriptName;  // Construct the URL for the script
//     fetch(scriptUrl)
//         .then(response => response.text())
//         .then(scriptContent => {
//         const codeBlock = document.querySelector('#script-content code');
//         codeBlock.textContent = scriptContent;  // Add the script content to the code block
//         Prism.highlightElement(codeBlock);  // Highlight the syntax using Prism.js
//         })
//         .catch(error => console.error('Error fetching script content:', error));

//         function copyToClipboard(content) {
//         navigator.clipboard.writeText(content).then(function() {
//             // Show feedback message
//             const copyFeedback = document.getElementById('copy-feedback');
//             copyFeedback.style.display = 'inline-block';
            
//             // Hide the feedback message after 2 seconds
//             setTimeout(function() {
//             copyFeedback.style.display = 'none';
//             }, 2000);
//         }).catch(function(error) {
//             console.error('Error copying to clipboard: ', error);
//         });
//     }
// }