 // List all files in the '/static/code/' folder (Manually entered)
 const gdscripts = [
    "player_movement.gd",
  ];

  const repoUrl = "https://jvansant13.github.io/techspecials/static/code/";  // Replace with your GitHub repo's URL

  const scriptList = document.getElementById('script-list');
  
  // Filter only .gd files and list them
  gdscripts.filter(file => file.endsWith('.gd')).forEach(script => {
    const li = document.createElement('li');
    li.textContent = script;
    li.addEventListener('click', () => fetchScript(script));
    scriptList.appendChild(li);
  });

  // Fetch and display the content of a GDScript
  function fetchScript(scriptName) {
    const scriptUrl = repoUrl + scriptName;  // Construct the URL for the script
    fetch(scriptUrl)
      .then(response => response.text())
      .then(scriptContent => {
        const codeBlock = document.querySelector('#script-content code');
        codeBlock.textContent = scriptContent;  // Add the script content to the code block
        Prism.highlightElement(codeBlock);  // Highlight the syntax using Prism.js
      })
      .catch(error => console.error('Error fetching script content:', error));
  }