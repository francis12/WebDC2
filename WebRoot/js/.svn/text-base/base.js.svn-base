//获取ID元素
var $ = function(id) { return typeof id == 'string' ? document.getElementById(id) : id };


//获取元素属性
var G =function (object, attribute) { return eval("object"+ "." + attribute) };
var get =function (object, attribute) { return eval("object"+ "." + attribute) };
//获取tagName元素
var tag = function(tagName){return typeof tagName=="string" ? document.getElementsByTagName(tName) : tagName;}
function ajaxUrl(url, handler) {
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
		if (xmlHttp.overrideMimeType) {
			xmlHttp.overrideMimeType("text/xml");
		}
	} else {
		if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				eval(handler + "(xmlHttp)");
			} else {
				
			}
		}
	};
	xmlHttp.open("GET", url, true);
	xmlHttp.send(null);
}