String.prototype.toTitleCase = function () {
	return this.replace(/\w\S*/g, function (txt) {
		return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
	});
};

var siteData;

function validateData(data) {
	if (data.themes.includes(data.theme) === false) {
		throw new Error("Theme does not exist!");
	}
	for (games in data.games) {
		if (typeof data.games[games] !== "boolean") {
			throw new Error("Game configuration must be a boolean!");
		}
	}
	return false;
}

function navbarLoc() {
	let navbar = document.querySelector(".header");
	let navbarLocation = localStorage.getItem("navbarlocation");
	switch (navbarLocation) {
		case "top":
			navbar.style.top = "0px";
			break;
		case "bottom":
			navbar.style.top = "calc(100vh - 44px)";
			break;
		case null:
			break;
	}
}

function handleData(data) {
	validateData(data);
	themeData = document.createElement("link");
	themeData.rel = "stylesheet";
	let theme;
	if (localStorage.getItem("theme") == null) {
		theme = siteData.theme;
	} else {
		theme = localStorage.getItem("theme");
	}
	if (document.body.classList.contains("index")) {
		themeData.href = `css/themes/${theme}.css`;
	} else {
		themeData.href = `../css/themes/${theme}.css`;
	}
	document.head.appendChild(themeData);
}

const cloakTitle = localStorage.getItem("title");
const cloakLink = localStorage.getItem("favicon");

function settabcloak(title, link) {
	const favicon = document.querySelector('link[rel="icon"]');
	const documentTitle = document.querySelector("title");
	documentTitle.innerHTML = title;
	favicon.href = cloakLink;
}

fetch("../neuralekzz.json")
	.then((response) => response.json())
	.then((data) => {
		siteData = data;
		handleData(data);
		window.onload = function () {
			if (document.body.classList.contains("settings")) {
				settingsLoad();
			}
			navbarLoc();
			cloakTitle ? settabcloak(cloakTitle, cloakLink) : console.log("No title/favicon found");
		};
	});
