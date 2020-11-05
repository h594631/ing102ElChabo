		let i =1;
		const antallBilder =4;
		function changeImage() {
		document.getElementById("slideshow").src = "bilder/slideshow/img" +(i++ % antallBilder) + ".JPG";
		}
		function slider(){
		setInterval(changeImage, 5000);
		}