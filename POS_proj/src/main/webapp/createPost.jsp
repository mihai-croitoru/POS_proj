<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a New Post</title>
<style > 
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
}

.title {
  color: grey;
  font-size: 18px;
}

td
{
    padding:0 16px 0 16px;
}
hr
{
 color : 
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="css/modalImageStyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="w3-theme-l5">



<%@ page import="com.tinder.demo.Users" %>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
		response.setHeader("Pragma","no-cache"); // HTTP1.0
		response.setHeader("Expires","0"); // Proxies
		if(session.getAttribute("user")!=null){
	%>
		<% Users u = (Users)session.getAttribute("user"); %>
		<%-- <% Posts p = (Posts)session.getAttribute("post"); %> --%>
		
		<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>Logo</a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i class="fa fa-globe"></i></a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Account Settings"><i class="fa fa-user"></i></a>
  <a href="chat.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i class="fa fa-envelope"></i></a>
   <a href ="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Post"><i class="fa fa-plus"></i></a>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
      <a href="#" class="w3-bar-item w3-button">One new friend request</a>
      <a href="#" class="w3-bar-item w3-button">John Doe posted on your wall</a>
      <a href="#" class="w3-bar-item w3-button">Jane likes your post</a>
    </div>
  </div>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" title="My Account">
  <!--   <img src="/w3images/avatar2.png" class="w3-circle" style="height:23px;width:23px" alt="Avatar"> -->
   <img id="navBarImg" src="<%=(u.getImgpath() != null) ? u.getImgpath() : "images/img-profile-missing.png" %>" class="w3-circle" style="height:42px;width:42px" alt="Avatar">
  </a>
 </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>
		
		<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">   
		  <!-- The Grid -->
  <div class="w3-row">
  
		
	 <!-- Left Column -->
    <div class="w3-col m3">
    
       <!-- Profile -->     
      <div class="card   w3-white">
      <div class="w3-container">
			 
			  <img id="myImg" src="<%=(u.getImgpath() != null) ? u.getImgpath() : "images/img-profile-missing.png" %>"  style="height:106px;width:106px" alt="Profile Image">
			  	<div id="myModal" class="modal">
			
			  <!-- The Close Button -->
				  <span class="close">&times;</span>
			
			  <!-- Modal Content (The Image) -->
			  <img class="modal-content" id="img01">
			
			  <!-- Modal Caption (Image Text) -->
			  <div id="caption"></div>
			</div>
				<form action="/uploadFiles" method="post" enctype="multipart/form-data">
				<input type="file" name="files" value="Choose profile image"/> <!-- multiple /><br> -->
				<input type="submit" /><br>
			</form>
			  <h1> <%= u.getName() %>! </h1>
			  <p class="title">Personal Info:</p>
				<p><b>e-mail:</b> <%=u.getEmail()%></p>
				<p><b>phone nr:</b> <%=u.getPhonenr()%></p>
				<p><b>Description:</b> <%=u.getDescription()%></p>
				<p><b>Language:</b> <%=u.getLanguage()%></p>
				<p><b>Sex:</b> <%=u.getSex()%></p>
				<p><b>Age:</b> <%=u.getAge()%></p>
				<p><b>Interested in:</b> <%=u.getInterestedin()%></p>
				<p><b>Ethnicity:</b> <%=u.getEtnicity()%></p>
				<p><b>Height:</b> <%=u.getHeight()%></p>
				<p><b>Weight:</b> <%=u.getWeight()%></p>
				<p><b>Religion:</b> <%=u.getReligion()%></p>
				<p><b>Region:</b> <%=u.getRegion()%>, <%=u.getCountry()%>, <%=u.getCity_state()%><br></p> 
				  <hr>			
			  <!-- <p><button>Contact</button></p> -->
			  	<br>
			<form action="/logout">
				<input type="submit" value="logout">
			</form>
			<br>
			   </div>
			</div>
		   <!-- End Left Column -->
    </div>   
		 <!-- Middle Column -->
    <div class="w3-col m7">       
      <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
      
        <img id="myImg" src="<%=(p.getImgpath() != null) ? p.getImgpath() : "images/img-profile-missing.png" %>"  style="height:260px;width:420px" alt="New Post Image">
        <form action="/uploadFiles" method="post" enctype="multipart/form-data">
				<input type="file" name="files" value="Select Post Image !"/> <!-- multiple /><br> -->
				<input type="Submit" /><br>
		</form>
	  <div class="w3-row-padding">
      <div class="w3-half">
      <label>Title</label>
      <input class="w3-input w3-border w3-padding-16" type="text" id="postTitle"  placeholder="Insert the title to your new post" name="title"/>
        </div>
       	 <div class="w3-half">
	      <label>Post Description</label><br>
	     <textarea   id="postDescription"  placeholder="Here goes the content of your post (Be mindfull , max 2000 characters !) ." name="postDescription"></textarea>
   		 </div>
    </div>
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-paper-plane"></i> Post</button> 
      </div> 

   
    <!-- End Middle Column -->
    </div>
			
		    <!-- Right Column -->
    <div class="w3-col m2">
      
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <h4>Friend's Chat List</h4>
           <hr>
          <p>Friend Nr 1</p>
          <p>Friend Nr 2</p>
          <p>Friend Nr 3</p>
          <p>Friend Nr 4</p>
          <p>Friend Nr 5</p>
          <p>Friend Nr 6</p>
          <p>Friend Nr 7</p>
          <p>Friend Nr 8</p>
          <p>Friend Nr 9</p>
          <p>Friend Nr 10</p>          
        </div>
      </div>
      <br>
      <hr>
      <div class="w3-card w3-round w3-white w3-padding-16 w3-center">
        <p>Ads</p>
      </div>
      <hr>
      <br>
         
      <div class="w3-card w3-round w3-white w3-padding-16 w3-center">
        <p>Small/Minimized Chat Box</p>
      </div>
            
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>

<!-- Footer -->
<footer class="w3-container w3-theme-d3 w3-padding-16">
  <h5>Footer</h5>
</footer>

<footer class="w3-container w3-theme-d5">
  <p>Powered by Hello Kitty !!!</p>
</footer>	
			
			
			
		<!-- 	<div id="userProfiles"></div>
			<button onclick="showUsersFromSameCountry()">Browse your love!</button> -->
			
			<script>
				// Get the modal
				var modal = document.getElementById('myModal');
				
				// Get the image and insert it inside the modal - use its "alt" text as a caption
				var img = document.getElementById('myImg');
				var modalImg = document.getElementById("img01");
				var captionText = document.getElementById("caption");
				img.onclick = function(){
				  modal.style.display = "block";
				  modalImg.src = this.src;
				  captionText.innerHTML = this.alt;
				}
				
				// Get the <span> element that closes the modal
				var span = document.getElementsByClassName("close")[0];
				
				// When the user clicks on <span> (x), close the modal
				span.onclick = function() { 
				  modal.style.display = "none";
				}
			</script>
			
			<script>
				function showUsersFromSameCountry(){
					var userCountry = "<%=u.getCountry()%>";
					var userSex = "<%=u.getSex()%>";
					var userInterestedin = "<%=u.getInterestedin()%>";
					
					var potentialPartersSex = (userInterestedin == "Women") ? "Female" : ((userInterestedin == "Men") ? "Male" : "errorParterSex");
					var potentialPartersInterests = (userSex == "Female") ? "Women" : ((userSex == "Male") ? "Men" : "errorParterInterets");
					var url = "find/"+userCountry+"&"+potentialPartersSex+"&"+potentialPartersInterests;
					$.get(url,function(data){
							//for(i=0; i<data.length; ++i){
								//alert(data[i].email + " " + data[i].name);
							//}
							var profileUsers = "<table class= 'w3-container w3-center ' >";
							var i=0;
							var j=i;
							while( i<data.length ){
								var currentUserId = <%=u.getId()%>;
								if( data[i].id == currentUserId ){
									j=i;
									++i;
									continue;
								}
								if( j%4==0 ){
									profileUsers += "<tr class='w3-padding-16'>";
								}
								
								profileUsers += "<td class='w3-card w3-padding-16  w3-white w3-center' ><img class=' w3-round ' src='"+data[i].imgpath+"' height='100' weight='100'><br>"
												+data[i].name+" "+data[i].lastname+"<br>"
												+data[i].country+" "+data[i].city_state
												+"<br><center><button class='w3-button w3-theme' onclick='likeDislike("+i+","+data[i].id+","+currentUserId
												+")' id='likeBtn"+i+"'></button></center>"
												+"<center><button class='w3-button w3-theme' onclick='#' id='addFrBtn' >Add Friend</button></center></td>";
								if( (j+1)%4==0 ){
									profileUsers += "</tr>";
								}
								++j;
								++i;
							}
							profileUsers += "</table>";							
							$("#userProfiles").html(profileUsers);
							
							/* show which users are already liked */
							var checkLikeUrl = "checklikes/" + <%=u.getId()%>;// + "&" + data[i].id;
							$.get(checkLikeUrl, function(checkLikeData){
								console.log(checkLikeData);
								for(i=0; i<data.length; ++i){
									//console.log(data[i].id);
									console.log("inArr "+i+": "+$.inArray(data[i].id, checkLikeData));
									if( $.inArray(data[i].id, checkLikeData)==-1 ){
										$("#likeBtn"+i).text("Like");
									}else{
										$("#likeBtn"+i).text("Liked");
									}						
								}
							});
						}
					);	
				}
			</script>
			<script>				
				function likeDislike(i_id, plikedUserId, puserId)
				{
					var newLikeData = JSON.stringify(
			    		{
			    			liked_user_id : plikedUserId,
			    			user_id : puserId
			    		}
			    	);
				    var elem = document.getElementById("likeBtn"+i_id);
				    if ( elem.innerHTML == "Like" ) {
				    	elem.innerHTML = "Liked";
				    	// insert likedUserId and userId in 'Liketable' table
				    	//alert("Inainte de post: "+newLikeData);
				    	$.ajax('/addLike', {
							type: 'POST',
							contentType: 'application/json',
							data: newLikeData,
							success: function(data, textStatus, jqXHR ){
								//alert(" sent " +data + ", status: "+textStatus);
							},
							error: function(jqXhr, textStatus, errorMessage){
								//console.log(jqXhr);
								//alert("idk: "+errorMessage + " , textStatus: " + textStatus + " , jqXhr: "+jqXhr);
							}
						});
				    }else {
				    	elem.innerHTML = "Like";
				    	$.ajax('/deleteLike', {
							type: 'DELETE',
							contentType: 'application/json',
							data: newLikeData,
							success: function(data, textStatus, jqXHR ){
								//alert(" sent " +data + ", status: "+textStatus);
							},
							error: function(jqXhr, textStatus, errorMessage){
								console.log(jqXhr);
								//alert("idk: "+errorMessage + " , textStatus: " + textStatus + " , jqXhr: "+jqXhr);
							}
						});
				    }
				}
			</script>
			<script src="vendor/jquery/jquery.min.js"></script>
			
	<%
		}else{
			response.sendRedirect("loginup.jsp");
		}
	%>
	
</body>
</html>