<!--[if lt IE 8]>
  <p class="browserupgrade">Vous utilisez un <strong>ancien navigateur</strong>. Mettez votre <a href="http://browsehappy.com" target="_blank">navigateur à jour</a> dès aujourd'hui !</p>
  <![endif]-->
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, intial-scale=1.0">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="mobile-web-app-capable" content="yes">
	<script src="bower_components/webcomponentsjs/webcomponents.js"></script>
	<link rel="import"  href="bower_components/core-toolbar/core-toolbar.html">
	<link rel="import" href="elements.html">
	<link rel="stylesheet" type="text/css" href="sl/liststyle.css">
	<link rel="stylesheet" type="text/css" href="app.css">
    <link rel="import" href="bower_components/paper-button/paper-button.html">
    <link rel="import" href="bower_components/paper-dropdown-menu/paper-dropdown-menu.html">
    <link rel="import" href="bower_components/paper-dropdown/paper-dropdown.html">
    <link rel="import" href="bower_components/paper-item/paper-item.html">
    <link rel="import" href="bower_components/core-item/core-item.html">
    <link rel="import" href="bower_components/core-menu/core-menu.html">
    <link rel="import" href="bower_components/paper-tabs/paper-tabs.html">
    <link rel="import" href="bower_components/paper-tab/paper-tab.html">
    <script src="sl/list.js"></script>
	<script src="app1.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
 <script type="text/javascript">
 //paste this code under head tag or in a seperate js file.
  // Wait for window load
  $(window).load(function() {
    // Animate loader off screen
    $(".se-pre-con").fadeOut("slow");;
  });
</script>
	  
	</head>

<body fullbleed layout vertical>
<div class="se-pre-con"></div>
	<core-drawer-panel id="leftdrawerPanel">
		
			<core-header-panel drawer>

				<core-toolbar id="hd">Menu</core-toolbar>
				<core-menu >
	 
	 			<core-menu  id="core_menu">
	 				<core-item id="button_home" label="Home" horizontal center layout></core-item>
      				<core-submenu  id="core_submenu"  label="Under Graduate">
        				<core-item id="button_ml" active label="Machine Learning" horizontal center layout></core-item>
        				<core-item id="button_ugce" label="Computer Engineering" horizontal center layout></core-item>
        				<core-item id="button_cag" label="Computer Aided Graphics" horizontal center layout></core-item>
      				</core-submenu>
      				<core-submenu id="core_submenu1"  label="Post Graduate">
        				<core-item id="button_se" label="Software Engineering" horizontal center layout></core-item>
        				<core-item id="button_pgce" label="Computer Science" horizontal center layout></core-item>
        				<core-item id="button_is" label="Information Security" horizontal center layout></core-item>
      				</core-submenu>
      				<core-item id="button_ft" label="Faculty Time-Table" horizontal center layout></core-item>
    			</core-menu>
    		</core-menu>
			</core-header-panel>
		
		<core-drawer-panel main rightDrawer id="rightdrawerPanel" >
      		
<core-header-panel drawer id="rightdrawerPanel">
						<core-toolbar id="hd">
						<div >Other Teachers</div>
					</core-toolbar>
				<core-menu >
	 <div id="students">
      <paper-input-decorator label="Other Teachers " id="paper_input1" floatinglabel>
<input is="core-input"    class="search"></input>
</paper-input-decorator>
<center>
<paper-icon-button class="sort" data-sort="fname" src="firstname.png"></paper-icon-button>
<paper-icon-button class="sort" data-sort="lname" src="lastname.png"></paper-icon-button>
<paper-icon-button class="sort" data-sort="average" src="position.png"></paper-icon-button>
</center>
<!--
      <paper-button raised class="sort" data-sort="fname">Sort by first name</paper-button>
      <paper-button raised class="sort" data-sort="lname">Sort by last name</paper-button>
      <paper-button raised class="sort" data-sort="average">Sort by average</paper-button> -->
      <ul class="list"  > 
        <li >
        	<paper-button  >
          <div class="fname">David</div>&nbsp;
          <div class="lname">Cohen</div>&nbsp;
          <div class="average"><span> 98</span></div>
      </paper-button>
        </li>
        <li>
        	<paper-button >
          <div class="fname">Micheal</div>&nbsp;
          <div class="lname">Stewarts</div>&nbsp;
          <div class="average">87</div>
      </paper-button >
        </li>
        <li><paper-button  >
          <div class="fname">Sachin</div>&nbsp;
          <div class="lname">Tendulkar</div>&nbsp;
          <div class="average">98</div>
          </paper-button>
        </li>
        <li><paper-button  >
          <div class="fname">Ali</div>&nbsp;
          <div class="lname">Asgar</div>&nbsp;
          <div class="average">89</div>
          </paper-button>
        </li>
        <li><paper-button  >
          <div class="fname">Danone</div>&nbsp;
          <div class="lname">Narang</div>&nbsp;
          <div class="average">56</div>
          </paper-button>
        </li>
      </ul>
    </div>
    <script type="text/javascript">
        var options = {
          valueNames: [ 'fname', 'lname', 'average']
        };

        var students = new List('students', options);
    </script>
    		</core-menu>
			</core-header-panel>

      		
      		
      			<core-header-panel main > <!--mode="waterfall-tall" -->
					<core-toolbar id="hd">
						<core-icon-button id="navicon" icon="menu">
						</core-icon-button>
						<div>Time-Table</div>
						<core-icon-button id="search" icon="search"></core-icon-button>
						
					</core-toolbar>
					<div class="content">
              <div id="div_home" style="display:inline;"> 
    <object type="text/html" data="Table/index.html" width="100%" height="90%"h style="overflow:hidden;">
    </object></div>
              <div id="div_ml" style="display:none;"> 
              <paper-tabs selected="0">
  <paper-tab>TAB 1</paper-tab>
  <paper-tab>TAB 2</paper-tab>
  <paper-tab>TAB 3</paper-tab>
</paper-tabs>
    <object type="text/html" data="http://www.facebook.com" width="100%" height="90%"h style="overflow:hidden;">
    </object></div>
              <div id="div_ugce" style="display:none;"> 
    <object type="text/html" data="http://www.bing.com" width="100%" height="90%"h style="overflow:hidden;">
    </object></div>
              <div id="div_cag" style="display:none;"> 
    <object type="text/html" data="http://www.thapar.edu" width="100%" height="90%"h style="overflow:hidden;">
    </object></div>
              <div id="div_se" style="display:none;"> 
    <object type="text/html" data="http://www.w3schools.com" width="100%" height="90%"h style="overflow:hidden;">
    </object></div>
              <div id="div_pgce" style="display:none;"> 
    <object type="text/html" data="http://www.twitter.com" width="100%" height="90%"h style="overflow:hidden;">
    </object></div>
              <div id="div_is" style="display:none;"> 
    <object type="text/html" data="http://www.willmaster.com" width="100%" height="90%"h style="overflow:hidden;">
    </object></div>
              <div id="div_ft" style="display:none;"> 
    <object type="text/html" data="http://www.samsung.com" width="100%" height="90%"h style="overflow:hidden;">
    </object></div>
					</div>
				</core-header-panel>
      		
    	</core-drawer-panel>
    </core-drawer-panel>
	</body>
</html>