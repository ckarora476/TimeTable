document.addEventListener('polymer-ready',function(){
	var search=document.getElementById('search');
	var rightdrawerPanel=document.getElementById('rightdrawerPanel');
	search.addEventListener('click',function(){
		rightdrawerPanel.togglePanel();
	});
});
document.addEventListener('polymer-ready',function(){
	var navicon=document.getElementById('navicon');
	var leftdrawerPanel=document.getElementById('leftdrawerPanel');
	navicon.addEventListener('click',function(){
		leftdrawerPanel.togglePanel();
	});
});
document.addEventListener('polymer-ready',function(){
	var button_home=document.getElementById('button_home');
	var div_home=document.getElementById('div_home');
	var button_ml=document.getElementById('button_ml');
	var div_ml=document.getElementById('div_ml');
	var button_ugce=document.getElementById('button_ugce');
	var div_ugce=document.getElementById('div_ugce');
	var button_cag=document.getElementById('button_cag');
	var div_cag=document.getElementById('div_cag');
	
	var div_se=document.getElementById('div_se');
	var button_se=document.getElementById('button_se');
	var div_pgce=document.getElementById('div_pgce');
	var button_pgce=document.getElementById('button_pgce');
	var div_is=document.getElementById('div_is');
	var button_is=document.getElementById('button_is');
	var div_ft=document.getElementById('div_ft');
	var button_ft=document.getElementById('button_ft');

	button_home.addEventListener('click',function(){
		div_home.style.display = 'inline';
		div_ml.style.display = 'none';
		div_ugce.style.display = 'none';
		div_cag.style.display = 'none';
		div_se.style.display = 'none';
		div_pgce.style.display = 'none';
		div_is.style.display = 'none';
		div_ft.style.display = 'none';
	});
	button_ml.addEventListener('click',function(){
		div_home.style.display = 'none';
		div_ml.style.display = 'inline';
		div_ugce.style.display = 'none';
		div_cag.style.display = 'none';
		div_se.style.display = 'none';
		div_pgce.style.display = 'none';
		div_is.style.display = 'none';
		div_ft.style.display = 'none';
	});
	button_ugce.addEventListener('click',function(){
		div_home.style.display = 'none';
		div_ml.style.display = 'none';
		div_ugce.style.display = 'inline';
		div_cag.style.display = 'none';
		div_se.style.display = 'none';
		div_pgce.style.display = 'none';
		div_is.style.display = 'none';
		div_ft.style.display = 'none';
	});
	button_cag.addEventListener('click',function(){
		div_home.style.display = 'none';
		div_ml.style.display = 'none';
		div_ugce.style.display = 'none';
		div_cag.style.display = 'inline';
		div_se.style.display = 'none';
		div_pgce.style.display = 'none';
		div_is.style.display = 'none';
		div_ft.style.display = 'none';
	});
	button_se.addEventListener('click',function(){
		div_home.style.display = 'none';
		div_ml.style.display = 'none';
		div_ugce.style.display = 'none';
		div_cag.style.display = 'none';
		div_se.style.display = 'inline';
		div_pgce.style.display = 'none';
		div_is.style.display = 'none';
		div_ft.style.display = 'none';
	});
	button_pgce.addEventListener('click',function(){
		div_home.style.display = 'none';
		div_ml.style.display = 'none';
		div_ugce.style.display = 'none';
		div_cag.style.display = 'none';
		div_se.style.display = 'none';
		div_pgce.style.display = 'inline';
		div_is.style.display = 'none';
		div_ft.style.display = 'none';
	});
	button_is.addEventListener('click',function(){
		div_home.style.display = 'none';
		div_ml.style.display = 'none';
		div_ugce.style.display = 'none';
		div_cag.style.display = 'none';
		div_se.style.display = 'none';
		div_pgce.style.display = 'none';
		div_is.style.display = 'inline';
		div_ft.style.display = 'none';
	});
	button_ft.addEventListener('click',function(){
		div_home.style.display = 'none';
		div_ml.style.display = 'none';
		div_ugce.style.display = 'none';
		div_cag.style.display = 'none';
		div_se.style.display = 'none';
		div_pgce.style.display = 'none';
		div_is.style.display = 'none';
		div_ft.style.display = 'inline';
	});
});

