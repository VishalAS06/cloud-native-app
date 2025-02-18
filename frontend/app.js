
fetch("http://your-backend-service-url/")
    .then(response => response.json())
    .then(data => document.getElementById("response").innerText = data.message)
    .catch(error => console.error("Error:", error));
