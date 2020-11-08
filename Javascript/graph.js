
function showImage(name) {

		document.getElementById("graph").src = "bilder/"+ name + ".png";
		document.getElementById("graph").className = "visibleA";
		document.getElementById("50").className = "hiddenB";
		document.getElementById("150").className = "hiddenB";
		document.getElementById("250").className = "hiddenB";
		document.getElementById(name).className = "visibleB";
		}
		