		let i =1;
		const antallBilder =3;
		function changeImage() {
		document.getElementById("slideshow").src = "bilder/slideshow/img" +(i++ % antallBilder) + ".JPG";
		}
		function slider(){
		setInterval(changeImage, 5000);
		}