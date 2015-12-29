// JavaScript Document

//(function () {
	
    "use strict";
	
	if(window.CSSFontFaceRule){
		//document.styleSheets[1].deleteRule(document.styleSheets.length-1);
	}
	   
	   
	
	var updateHovered = 0;   
	   
	   
	
	/*
	 *	Slider Definitions
	 */							
	
	function Slider(c){
		this.container 	= 	c;
		this.img_ul		=	c.children[0];
		this.img_li		= 	this.img_ul.children;
		this.length		=	this.img_li.length; 
		this.current	=	0;
		this.img_width	=	this.img_li[0].children[0].width;	
		this.hovered = 0;	
	}
		
	Slider.prototype.init = function(){
		this.img_ul.style.width= this.length*100 +"%";  	/* Width of ul element */ 
		for(var i=0;i<this.length;i++)
			this.img_li[i].style.width= (100/this.length)+"%";		/* Width of li element */
	}
	 
	Slider.prototype.goto = function(n){
		this.current = n<0?this.length-1:(n>=this.length?n%this.length:n);
		slid.img_width = slid.img_li[0].children[0].width;
		this.img_ul.style.marginLeft= -this.img_width*this.current+"px";	
	}
	
	Slider.prototype.next = function(){
		this.goto(this.current+1);
	}
	
	Slider.prototype.back = function(){
		this.goto(this.current-1);
	}
	
	if(document.getElementById("iSlider")){
		// Working Section

		document.getElementById("back").onclick = function(){
			slid.back();	
		}
		
		document.getElementById("next").onclick = function(){	
			slid.next();		
		}
	
		window.onresize = function(){
			slid.img_width = slid.img_li[0].children[0].width;
			slid.img_ul.style.marginLeft= -slid.img_width*slid.current+"px";
		}
		
		window.setInterval(function(){
			if(!slid.hovered)
			slid.next();		
		},6000);
		


		
		/* Working with Slider */
		
		var slid = new Slider(document.getElementById("iSlider"));
		slid.init();
	
		slid.container.onmouseover = function(){
			slid.hovered =1;
		}

		slid.container.onmouseout = function(){
			slid.hovered=0;
		}

	}
		
	
	
	
	/* Handling IE */
	var ie;
	var news= document.getElementById("facts");
	
	function addhover() {
	   var navli,i;
	   navli = document.getElementById('nav').getElementsByTagName('li');
	   for(i=0;i<navli.length;i++) {
		  navli[i].onmouseover=function(){this.className+=" hover"};
		  navli[i].onmouseout=function(){this.className= this.className.replace("hover","")};
	   }
	}	
	
	if(ie){
		if(news){
			var nod = news.children[1];
			nod.innerHTML="<marquee scrollamount=\"2\" direction=\"up\" onmouseover=\"this.setAttribute('scrollamount',0);\" onmouseout=\"this.setAttribute('scrollamount',2);\">"+nod.innerHTML+"</marquee>";
			news=0;	
		}
		
		var nav = document.getElementById("nav");
		nav.children[0].className+=' outer_ul';
		var o_ul =nav.children[0].children;
		for (var i=0,len=o_ul.length;i<len;i++){
			var li=o_ul[i];
			li.className+=' outer_li';
			li.children[0].className+=' outer_a';
			if(li.children[1])
				li.children[1].className+=' w_div';
		}
		
		addhover();
		
		if(ie<3){
			document.getElementById("weather").style.display="none";
		}

		
	}
	
	
	
	/* updates  */
	
	if(news){
		var margin=0;
		var n_ul= news.children[1].children[0];	
		var n_height= n_ul.offsetHeight;
		var nod = document.createElement("ul");
		nod.innerHTML=n_ul.innerHTML;
		news.children[1].appendChild(nod);
		window.setInterval(function(){
			if(!updateHovered){
				n_ul.style.marginTop=--margin+"px";
				if(margin<=-n_height)
					margin=0;
			}
		},50);
			
		window.onresize = function () {
			var n_height= n_ul.offsetHeight;
		}
		
		
		news.onmouseover = function(){
			updateHovered =1;
		}

		news.onmouseout = function(){
			updateHovered=0;
		}		
	}


	
	
	
	/*
	window.onmousemove = function(e){
		y=e.clientY;
		height = document.getElementsByTagName("body")[0].scrollHeight;
		xi=0;
		yi=y/window.innerHeight*height*0.97;
		window.scroll(xi,yi);

	}
	*/
	
	

	/*______ End of code_______*/
//})();