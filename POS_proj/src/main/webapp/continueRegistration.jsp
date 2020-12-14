<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Continue Registration</title>
<style>

body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body {
  /* background-image: url("img_tree.gif"), url("paper.gif"); */
  background-color: #fffdce;
}
 html {
    height: 100%;
    line-height: 1.8;
    style="margin-bottom: 10px;
    padding-bottom: 20px;
    background-color: #fffdce;
   
}

textarea { height: auto;
			width: auto;  }
/* Full height image header */
/* .bgimg-1 {
    background-position: center;
    /* background-size: cover; */
/*     background-size: auto;
      background-color: #fffdce;  
    min-height: 600px;
    background-repeat: repeat;

} */ 


</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="css/modalImageStyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body  class="w3-theme-l5">
<script src="js/city_state.js"></script>
<%@ page import="com.tinder.demo.Users" %>
	<%
		if(session.getAttribute("user")!=null){
	%>
			Hello, <% Users u = (Users)session.getAttribute("user"); %> <%= u.getName() %>
	<%
		}else{
			response.sendRedirect("loginup.jsp");
		}
	%>
	
	
	
	
	<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>Logo</a>
  
  <!-- <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i class="fa fa-globe"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Account Settings"><i class="fa fa-user"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i class="fa fa-envelope"></i></a> -->
 <!--  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
      <a href="#" class="w3-bar-item w3-button">One new friend request</a>
      <a href="#" class="w3-bar-item w3-button">John Doe posted on your wall</a>
      <a href="#" class="w3-bar-item w3-button">Jane likes your post</a> -->
    </div>
  </div>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" title="My Account">
    <img src="/w3images/avatar2.png" class="w3-circle" style="height:23px;width:23px" alt="Avatar">
  </a>
 </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
<!--   <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a> -->
</div>
	<!-- Fill in your missing data!
	Name: <input type="text" id="name" name="name"/><br>
	Lastname: <input type="text" id="lastname" name="lastname"/><br> -->
	     <!-- Name asd lastname -->
  <div class="w3-container">
    <div class="w3-panel w3-padding-16 w3-pale-green w3-opacity w3-card w3-hover-opacity-off">
      <h2 class="w3-center">Fill in your missing data!</h2>
      <div class="w3-row-padding">
      <div class="w3-half">
      <label>Name</label>
      <input class="w3-input w3-border w3-padding-16" type="text" id="name"  placeholder="Insert your given name" name="name"/>
        </div>
   
       	 <div class="w3-half">
	      <label>Last Name</label><br>
	      <input class="w3-input w3-border w3-padding-16"  type="text" id="lastname"  placeholder="Insert your Last Name" name="lastname"/>
   		 </div>
    </div>
   </div>
  </div>
     <!-- Detailed Info-->
     <div class="w3-container">
    <div class="w3-panel w3-padding-16  w3-pale-blue w3-opacity w3-card w3-hover-opacity-off">
      <h2 class="w3-center">Detailed Personal Info!</h2>
      <div class="w3-row-padding">
      <div class="w3-half">
      <label>Phone number</label>
      <input class="w3-input w3-border " type="text" id="phonenr" name="phonenr" placeholder="Insert your phone number" />
        </div>
       	 <div class="w3-half">
	    <!--   <label>Profile Image</label><br>
	      <input  class="w3-input w3-border "  type="file" name="imgpath" id="imgpath" accept="image/*" /> -->
	      <label> Religion</label>
     <select id="religion" name="">
		  <option name="religion">-- select one --</option>
		  <option value="African Traditional & Diasporic">African Traditional & Diasporic</option>
		  <option value="Agnostic">Agnostic</option>
		  <option value="Atheist">Atheist</option>
		  <option value="Baha'i">Baha'i</option>
		  <option value="Buddhism">Buddhism</option>
		  <option value="Cao Dai">Cao Dai</option>
		  <option value="Chinese traditional religion">Chinese traditional religion</option>
		  <option value="Christianity">Christianity</option>
		  <option value="Hinduism">Hinduism</option>
		  <option value="Islam">Islam</option>
		  <option value="Jainism">Jainism</option>
		  <option value="Juche">Juche</option>
		  <option value="Judaism">Judaism</option>
		  <option value="Neo-Paganism">Neo-Paganism</option>
		  <option value="Nonreligious">Nonreligious</option>
		  <option value="Rastafarianism">Rastafarianism</option>
		  <option value="Secular">Secular</option>
		  <option value="Shinto">Shinto</option>
		  <option value="Sikhism">Sikhism</option>
		  <option value="Spiritism">Spiritism</option>
		  <option value="Tenrikyo">Tenrikyo</option>
		  <option value="Unitarian-Universalism">Unitarian-Universalism</option>
		  <option value="Zoroastrianism">Zoroastrianism</option>
		  <option value="primal-indigenous">primal-indigenous</option>
		  <option value="Other">Other</option>
	</select>
   		 </div>
   		 </div>
   		 <br>
   		 <div class="w3-row-padding">
   		      <div class="w3-half">
      <label>Description</label>
      <textarea   id="description"  placeholder="Tell the world about yourself..." name="description"></textarea><br>
     
        </div>
             <div class="w3-half  ">
      <label>Preferred language</label>
      	<select  data-placeholder="Choose a Language..." id="language" name="language">
		  <option value="AF">Afrikanns</option>
		  <option value="SQ">Albanian</option>
		  <option value="AR">Arabic</option>
		  <option value="HY">Armenian</option>
		  <option value="EU">Basque</option>
		  <option value="BN">Bengali</option>
		  <option value="BG">Bulgarian</option>
		  <option value="CA">Catalan</option>
		  <option value="KM">Cambodian</option>
		  <option value="ZH">Chinese (Mandarin)</option>
		  <option value="HR">Croation</option>
		  <option value="CS">Czech</option>
		  <option value="DA">Danish</option>
		  <option value="NL">Dutch</option>
		  <option value="EN">English</option>
		  <option value="ET">Estonian</option>
		  <option value="FJ">Fiji</option>
		  <option value="FI">Finnish</option>
		  <option value="FR">French</option>
		  <option value="KA">Georgian</option>
		  <option value="DE">German</option>
		  <option value="EL">Greek</option>
		  <option value="GU">Gujarati</option>
		  <option value="HE">Hebrew</option>
		  <option value="HI">Hindi</option>
		  <option value="HU">Hungarian</option>
		  <option value="IS">Icelandic</option>
		  <option value="ID">Indonesian</option>
		  <option value="GA">Irish</option>
		  <option value="IT">Italian</option>
		  <option value="JA">Japanese</option>
		  <option value="JW">Javanese</option>
		  <option value="KO">Korean</option>
		  <option value="LA">Latin</option>
		  <option value="LV">Latvian</option>
		  <option value="LT">Lithuanian</option>
		  <option value="MK">Macedonian</option>
		  <option value="MS">Malay</option>
		  <option value="ML">Malayalam</option>
		  <option value="MT">Maltese</option>
		  <option value="MI">Maori</option>
		  <option value="MR">Marathi</option>
		  <option value="MN">Mongolian</option>
		  <option value="NE">Nepali</option>
		  <option value="NO">Norwegian</option>
		  <option value="FA">Persian</option>
		  <option value="PL">Polish</option>
		  <option value="PT">Portuguese</option>
		  <option value="PA">Punjabi</option>
		  <option value="QU">Quechua</option>
		  <option value="RO">Romanian</option>
		  <option value="RU">Russian</option>
		  <option value="SM">Samoan</option>
		  <option value="SR">Serbian</option>
		  <option value="SK">Slovak</option>
		  <option value="SL">Slovenian</option>
		  <option value="ES">Spanish</option>
		  <option value="SW">Swahili</option>
		  <option value="SV">Swedish </option>
		  <option value="TA">Tamil</option>
		  <option value="TT">Tatar</option>
		  <option value="TE">Telugu</option>
		  <option value="TH">Thai</option>
		  <option value="BO">Tibetan</option>
		  <option value="TO">Tonga</option>
		  <option value="TR">Turkish</option>
		  <option value="UK">Ukranian</option>
		  <option value="UR">Urdu</option>
		  <option value="UZ">Uzbek</option>
		  <option value="VI">Vietnamese</option>
		  <option value="CY">Welsh</option>
		  <option value="XH">Xhosa</option>
	</select>
        </div>
        </div>
        <br>
        <div class="w3-row-padding">
        <div class="w3-half">
      <label>Sex</label>
      <select   data-placeholder="Choose sex..." id="sex" name="sex"><option value="f">Female</option><option value="m">Male</option></select>
        </div>
        <div class="w3-half">
      <label>Age</label>
       <input class="w3-input w3-border " type="number" id="age" name="age" min=0 max=160 />
        </div>
        </div>
        <br>
   		 <div class="w3-row-padding">
   		  <div class="w3-half">
      <label>Interested in</label>
      <select  id="interestedin" data-placeholder="Interested in..." name="interestedin">
						<option value="w">Women</option>
						<option value="m">Men</option>
	 </select>
        </div>
         <div class="w3-half">
      <label>Ethnicity</label>
       <input class="w3-input w3-border " id="etnicity" type="text" name="etnicity" placeholder="Here goes your ethnicity" />
        </div>
        </div>
        <br>
         <div class="w3-row-padding">
          <div class="w3-half">
      <label>Height (in Cm)</label>
      <input  class="w3-input w3-border "  id="height" type="number" name="height" min=0 max=300/> 
        </div>
         <div class="w3-half">
      <label>Weight (in Kg)</label>
      <input class="w3-input w3-border " id="weight" type="number" name="weight" min=0 max=1000/>
              </div>
                      </div>
              
      
        <br>
      <!--   <div class="w3-row-padding">
        <div class="w3-half">
      <label> Religion</label>
     <select id="religion" name="">
		  <option name="religion">-- select one --</option>
		  <option value="African Traditional & Diasporic">African Traditional & Diasporic</option>
		  <option value="Agnostic">Agnostic</option>
		  <option value="Atheist">Atheist</option>
		  <option value="Baha'i">Baha'i</option>
		  <option value="Buddhism">Buddhism</option>
		  <option value="Cao Dai">Cao Dai</option>
		  <option value="Chinese traditional religion">Chinese traditional religion</option>
		  <option value="Christianity">Christianity</option>
		  <option value="Hinduism">Hinduism</option>
		  <option value="Islam">Islam</option>
		  <option value="Jainism">Jainism</option>
		  <option value="Juche">Juche</option>
		  <option value="Judaism">Judaism</option>
		  <option value="Neo-Paganism">Neo-Paganism</option>
		  <option value="Nonreligious">Nonreligious</option>
		  <option value="Rastafarianism">Rastafarianism</option>
		  <option value="Secular">Secular</option>
		  <option value="Shinto">Shinto</option>
		  <option value="Sikhism">Sikhism</option>
		  <option value="Spiritism">Spiritism</option>
		  <option value="Tenrikyo">Tenrikyo</option>
		  <option value="Unitarian-Universalism">Unitarian-Universalism</option>
		  <option value="Zoroastrianism">Zoroastrianism</option>
		  <option value="primal-indigenous">primal-indigenous</option>
		  <option value="Other">Other</option>
	</select>
        </div>
         </div>
         <br> -->
        
       
    </div>
   
  </div>
	<br>
	<b>Location</b><br>
	
		Region&raquo; <select  class="w3-quarter" onchange="set_country(this,country,city_state)" id="region" size="1" name="region">
		<option value="" selected="selected">SELECT REGION</option>
		<option value=""></option>
		<script type="text/javascript">
		setRegions(this);
		</script>
		</select>
		Country&raquo; <select  class="w3-quarter" id="country" name="country" size="1" disabled="disabled" onchange="set_city_state(this,city_state)"></select>
		City/State&raquo; <select  class="w3-quarter"  id="city_state" name="city_state" size="1" disabled="disabled" onchange="print_city_state(country,this)"></select>
		<input class="w3-quarter" type="submit" onclick="updateUser()" name="continueReg" value="update" /> 

		<div id="txtregion"></div>
		<div id="txtplacename"></div>
		
		<footer class="w3-container w3-theme-d3 w3-padding-16">
  <h5>Footer</h5>
</footer>

<footer class="w3-container w3-theme-d5">
  <p>Powered by Hello Kitty  !!!</p>
</footer>	
		
				  
<!--      <div id="divlocation1"></div>
     <script>
	divlocation1.insertAdjacentHTML('beforebegin', '
			<div class="w3-container">
    <div class="w3-panel w3-padding-16 w3-pale-green w3-opacity w3-card w3-hover-opacity-off">
    <br><h2 class="w3-center">Location</h2><br>
    Region&raquo; <select set_country(this,country,city_state)"  id="region" size="1" name="region" >
	<option value="" selected="selected">SELECT REGION</option>
	<option value=""></option>
			');
	setRegions(this);
	
	divlocation1.insertAdjacentHTML('afterend', '
			</select>
	Country&raquo; <select  id="country" name="country" size="1" disabled="disabled" onchange="set_city_state(this,city_state)"></select>
	City/State&raquo; <select  id="city_state" name="city_state" size="1" disabled="disabled" onchange="print_city_state(country,this)"></select>
	<input type="submit" onclick="updateUser()" name="continueReg" value="update" /> 
	<div id="txtregion"></div>
	<div id="txtplacename"></div>
	</div>
	</div>
			
			
			');
	
	
	</script>  -->
     
<!--            <div class="w3-container">
    <div class="w3-panel w3-padding-16 w3-pale-green w3-opacity w3-card w3-hover-opacity-off">
    <br><h2 class="w3-center">Location</h2><br>
	
		Region&raquo; <select set_country(this,country,city_state)"  id="region" size="1" name="region" >
		<option value="" selected="selected">SELECT REGION</option>
		<option value=""></option>
		
		<script type="text/javascript">
		setRegions(this);
		</script>
		</select>
		Country&raquo; <select  id="country" name="country" size="1" disabled="disabled" onchange="set_city_state(this,city_state)"></select>
		City/State&raquo; <select  id="city_state" name="city_state" size="1" disabled="disabled" onchange="print_city_state(country,this)"></select>
		<input type="submit" onclick="updateUser()" name="continueReg" value="update" /> 
		<div id="txtregion"></div>
		<div id="txtplacename"></div>
		</div>
		</div> -->
		
     
<!-- 
<div id= "divlocation1"></div>

<div id= "divlocation2"></div>

<script>
divlocation1.insertAdjacentHTML('afterend', '<div class="w3-container">
	    <div class="w3-panel w3-padding-16 w3-pale-green w3-opacity w3-card w3-hover-opacity-off">
<h2 class="w3-center">Location</h2>
<div class="w3-row-padding" >

<div class="w3-third">
 <label>Region</label>    

Region&raquo;<select onchange="set_country(this,country,city_state)" id="region" size="1" name="region">
	<option value="" selected="selected">SELECT REGION</option>
	<option value=""></option> ');
	
	
	setRegions(this);
	
	
divlocation2.insertAdjacentHTML('beforebegin', ' </select>
    
        </div> 
       	 <div class="w3-third">
	      <label>Country</label><br>
	   		Country&raquo; <select id="country" name="country" size="1" disabled="disabled" onchange="set_city_state(this,city_state)"></select>
   		 </div>
   		 
   		 <div class="w3-third">
	      <label>City/State</label><br>
	  		 City/State&raquo; <select id="city_state" name="city_state" size="1" disabled="disabled" onchange="print_city_state(country,this)"></select>
   		 </div>
   		 <br>
   		 <div class="w3-third">
   		 <input class=" w3-pink " type="submit" onclick="updateUser()" name="continueReg" value="Submit" /> 

		<div id="txtregion"></div>
		<div id="txtplacename"></div>
   		  </div>
    </div>
   </div>
  </div>  ');

</script> -->
		
	<script src="vendor/jquery/jquery.min.js"></script>
	<script>
		function updateUser(){
			var n = $('#name').val();
			var l = $('#lastname').val();
			var p = $('#phonenr').val();
			//alert("yo "+n+l+p);
			var updateData = JSON.stringify(
					{
					name : $('#name').val(),
					lastname : $('#lastname').val(),
					phonenr : $('#phonenr').val(),
					imgpath : $('#imgpath').val(),
					description : $('#description').val(),
					language :  $( "#language option:selected" ).text(),
					sex : $( "#sex option:selected" ).text(),
					age : $('#age').val(),
					interestedin : $( "#interestedin option:selected" ).text(),
					etnicity : $('#etnicity').val(),
					height : $('#height').val(),
					weight : $('#weight').val(),
					religion : $( "#religion option:selected" ).text(),
					region : $( "#region option:selected" ).text(),
					country : $( "#country option:selected" ).text(),
					city_state : $( "#city_state option:selected" ).text() 
					}
				);
			$.ajax('/updateUser', {
				type: 'POST',
				contentType: 'application/json',
				data: updateData,
				success: function(data, textStatus, jqXHR ){
					location.replace("http://localhost:8080/userProfile.jsp");
					//alert(" sent " +data + ", status: "+textStatus);
				},
				error: function(jqXhr, textStatus, errorMessage){
					console.log(jqXhr);
//					alert(jqXhr);
//					alert("idk: "+errorMessage + " , textStatus: " + textStatus + " , jqXhr: "+jqXhr);
				}
			});
		}
	</script>
</body>
</html>