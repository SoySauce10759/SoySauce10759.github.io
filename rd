<!DOCTYPE html>
<html>
	<head>
		<!-- Google tag (gtag.js) -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=G-JTXT3Q4906"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag() {
				dataLayer.push(arguments);
			}
			gtag("js", new Date());

			gtag("config", "G-JTXT3Q4906");
		</script>
		<script src="../js/header.js"></script>
		<link rel="stylesheet" href="../css/settings.css" />
		<link rel="stylesheet" href="../css/maintheme.css" />
		<link rel="stylesheet" href="../css/header.css" />
		<link rel="icon" type="image/x-icon" href="../images/favicon.ico" />
		<title>Neuralekzz | Settings</title>
		<meta property="og:title" content="neuralekzz.github.io" />
		<meta property="og:description" content="A game site designed for easy replication and configuration." />
		<meta property="og:type" content="website" />
		<meta property="og:image" content="https://raw.githubusercontent.com/neuralekzz/neuralekzz.github.io/main/images/neuralekzz.png" />
	</head>
	<body class="settings">
		<div class="bg"></div>
		<div class="header">
			<a href="/"
				><div class="header-icon"><img src="../images/neuralekzz.png" /></div
			></a>
			<a href="../html/games.html"><div class="header-item">Games</div></a>
			<a href="../html/settings.html"><div class="header-item selected">Settings</div></a>
			<a href="../html/info.html"><div class="header-item">Info</div></a>
			<a href="../html/links.html"><div class="header-item">Links</div></a>
			<a href="https://github.com/neuralekzz/neuralekzz.github.io/wiki/Forking"><div class="header-item">Fork</div></a>
			<a href="../html/socials.html"><div class="header-item">Socials</div></a>
			<a href="https://github.com/neuralekzz/neuralekzz.github.io/wiki"><div class="header-item">Wiki</div></a>
		</div>
		<div class="container">
			<div class="container2">
				<section>
					<div class="title">Tab Cloak</div>

					<input type="text" placeholder="Title" id="title" />
					<input type="text" placeholder="Website link (to get icon from)" id="sitelink" />
					<button onclick="settabcloakButton()">Set</button>
				</section>
				<section>
					<div class="title">Theme</div>
					<select id="theme" onchange="settheme()"></select>
				</section>
				<section>
					<div class="title">Navbar</div>
					<div>
						<input id="topnavbar" value="top" type="radio" name="navbarlocation" onclick="handleNavbarLocation(this)" />
						<label for="topnavbar">Top</label>
					</div>
					<div>
						<input id="bottomnavbar" value="bottom" type="radio" name="navbarlocation" onclick="handleNavbarLocation(this)" />
						<label for="bottomnavbar">Bottom</label>
					</div>
				</section>
			</div>
		</div>
	</body>
	<script src="../js/settings.js"></script>
	<script src="../js/footer.js"></script>
</html>
