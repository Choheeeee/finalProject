$("aside").on('click',".menu-link",function(event){
	event.preventDefault();
	let myparent = $(this).parents("li");
	let contentsPlace = document.querySelector("#div-body");
	$.ajax({    
		type : 'get',           // 타입 (get, post, put 등등)    
		url : this.href,           // 요청할 서버url    
		headers : {              // Http header      
			"Content-Type" : "text/html",      
		},
		success : function(resp) {    
			myparent.siblings().removeClass("active");
			myparent.addClass("active");
			let parser = new DOMParser();
			let newDoc = parser.parseFromString(resp, "text/html");
			let contents = newDoc.getElementById("div-body");
			let preTag = contents.innerHTML;
			contentsPlace.innerHTML = preTag;
		},    
		error : function(request, status, error) { 
			console.error(error);
		}
	})
})

















