<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<link rel="stylesheet" href="css/chatStyle.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="vendor/jquery/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ page import="com.tinder.demo.Users" %>

	<% Users u = (Users)session.getAttribute("user"); %>
	<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>Logo</a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i class="fa fa-globe"></i></a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Account Settings"><i class="fa fa-user"></i></a>
  <a href="chat.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i class="fa fa-envelope"></i></a>
  
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
  <a href="chat.jsp" class="w3-bar-item w3-button w3-padding-large">Chat</a>
  <a href="userProfile.jsp" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>
	
	
			<!-- Page Container -->
<div class="w3-container w3-content" style="max-width: 1400px; margin-top:80px">   
		  <!-- The Grid -->
  <div class="w3-row">
  
		 <!-- Left Column -->
    <div class="w3-col m2">
	<!-- 	 <div class="card   w3-white">
      <div class="w3-container">
     </div>
      </div> -->
      
   	
       	    <div class="row" >
	    <div id="chatUsers" class="w3-col m2" >	    	
	    </div> 
		</div>
		   <!-- End Left Column -->
    </div>
		 <!-- Middle Column -->
    <div class="w3-col m10">
    
    
			<br>
			<hr>
		
	<div id="chat" class="w3-col m6" style="background-color:lavenderblush; width: auto; ">
	    	
	    </div>		
			
			<hr>
			<br>
      
      
    <!-- End Middle Column -->
    </div>
			    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>
	
	
	<!-- 
	<div class="row">
	    <div id="chatUsers" class="col-sm-2" >
	    	
	    </div>
	    <div id="chat" class="col-sm-10" style="background-color:lavenderblush;">
	    	
	    	
	    	
	    </div>
	</div> -->

	
	

	
	
	<script>
		$( document ).ready(function() {			
			$.ajax({
			    url: "/getFriends/"+<%=((Users)session.getAttribute("user")).getId()%>,
			    type: 'GET',
			    success: function(friendsData){
			    	var friendUsers = "<ul style='list-style-type:none;'>";
			    	//console.log(friendsData);
					for(i=0; i<friendsData.length; ++i){
						friendUsers += "<li class='friends' id='li"+i+
							"' style='background-color:lavender;  background-size: 2000px;'"+
							"onMouseOver=\"this.style.color='#F8F8F8'\" onMouseOut=\"this.style.color='#000'\"" +
							"onclick=\"showChat(this,"+friendsData[i].id+")\">"+ friendsData[i].name +"</li>";
					}
					//console.log(friendUsers);
					friendUsers+="</ul>";
					$("#chatUsers").html(friendUsers);
				},
			    error: function(jqXhr, textStatus, errorMessage) {
			        alert(errorMessage + " status: " + textStatus); //or whatever
			        console.log(jqXhr);
			    }
			});
		});
		
		
		
		var currentIdInMessagesTable;
		function showChat(elem, chatPartnerId){
		currentIdInMessagesTable = 0;
			$(".friends").css("background-color","#0F0");
			elem.style.backgroundColor = "#F00";
			var chatbox = "<div class='container'>"
			  +"<div class='chat-container'>"
			    +"<div class='message' id=" + chatPartnerId + " style='display:none'>"
			      +"<img class='avatar' src='https://placeimg.com/50/50/people?1'>"
			      +"<div class='datetime'>23/03/2016 20:40</div>"
			      +"<p class="+ <%= ((Users)session.getAttribute("user")).getId() %> +">A bitch text</p>"
			    +"</div>"
			  +"</div>"
			 // +"<div class='send-message-form'>"
			   /*  +"<input type='text' placeholder='Your message'>" */
			    +"<textarea   rows='4' cols='100' placeholder='Say something nice...' name='Your Message'></textarea>"
			    +"<button class='w3-button w3-theme'  onclick=\"showMessages("+chatPartnerId+")\">Send</button>"
			//	+"</div>"
			  +"</div>";
			$("#chat").html(chatbox);
			
			
			
			/*
				Se va introduce in chatbox ultimele 50 de mesaje, gasite in baza de date.
			*/
			getChatPartnerMessages(chatPartnerId); // ar trebui si chatPartnerImg
		}
		
		/* Trebuie si o fcti setInterval care verifica daca apar mesaje noi in DB */
		
		
		
		function showMessages(chatPartnerId) {
			//console.log(chatPartnerId);
			var messageText = $('textarea').val();
			var profileImage = '<%=((Users)session.getAttribute("user")).getImgpath()%>';
			var currentTime = getCurrentTime();
			/* 
				LA DATE A MESAJULUI AS PUNE STRING IN BAZA DE DATE ANUME MILLISECONDS, 
				daca acest comment inca exista inseamna ca inca nu am facut asta
			 */
			appendMessage(messageText, profileImage, currentTime, true );
		    $('input').val('');
		    
		    /* Insert the new message into DB */
		    //insertMessageIntoDB();
		    var userId = <%= ((Users)session.getAttribute("user")).getId() %>;
    		var newMessageData = JSON.stringify(
	    		{
	    			created : currentTime,
	    			id_user : userId,
	    			dest_user_id : chatPartnerId,
	    			message_body : messageText
	    		}
	    	);
			$.ajax('/addMessage', {
				type: 'POST',
				contentType: 'application/json',
				data: newMessageData,
				success: function(data, textStatus, jqXHR ){
					//alert(" sent " +data + ", status: "+textStatus);
				},
				error: function(jqXhr, textStatus, errorMessage){
					console.log(jqXhr);
					//alert("idk: "+errorMessage + " , textStatus: " + textStatus + " , jqXhr: "+jqXhr);
				}
			});
			
			
			// creeam setIntervalul
			
			
		}
		
		function appendMessage(messageText, profileImage, messageArrivalTime, isUserSender){
			var message = $('.message').first().clone();
			message.removeAttr('id');
			if( isUserSender ){
				message.find('.'+<%= ((Users)session.getAttribute("user")).getId() %>).css("font-weight", "bold");
			}else{
				message.find('.'+<%= ((Users)session.getAttribute("user")).getId() %>).css("font-weight", "normal");
			}
		    message.find('p').text( messageText );
		    message.find('.avatar').attr("src", profileImage);
		    message.find('.avatar').attr("height","50");
		    message.find('.avatar').attr("width","50");
		    message.find('div').text(messageArrivalTime);
		    message.show();
		    message.prependTo('.chat-container');
		}
		
		function getCurrentTime(){
			var today = new Date();
			var dd = today.getDate();
			var mm = today.getMonth() + 1; //January is 0!
			
			var yyyy = today.getFullYear();
			if (dd < 10) {
			  dd = '0' + dd;
			} 
			if (mm < 10) {
			  mm = '0' + mm;
			} 
			var today = today.getHours() + ':' + today.getMinutes() + " " + dd + '/' + mm + '/' + yyyy;
			return today;
		}
		
		
		function getChatPartnerMessages(chatPartnerId){
			var chatPartnerImg = "";
			var url = "/getChatUserImage/"+chatPartnerId;
			$.get(url, function( imgData ){
				chatPartnerImg = imgData; //"images/img-profile-missing.png"
			});
			setInterval(function(){
				/*
				 caut mesajul din tabelul 'privatemessage' unde dest_user_id = session.getAttribute("user")).getId(), 
				 iar id_user = chatPartnerId si id (la mesaj din tabelul 'privatemessage') e mai mare decat currentIdInMessagesTable.
				 Apoi actualizez currentIdInMessagesTable cu ultimul rand primit din query.
				*/
				/* get messages from chatPartnerId */
				if( $('#'+chatPartnerId).length != 0) {
					var url = "getMessages/" + chatPartnerId + "&" + <%=((Users)session.getAttribute("user")).getId()%> + "&" + currentIdInMessagesTable;
					$.get(url, function( messageData ){
						if( !jQuery.isEmptyObject(messageData) ){
							currentIdInMessagesTable = messageData[messageData.length-1].id;
							console.log("curId: "+currentIdInMessagesTable);
							console.log("data: "+messageData);
							for(i=0; i<messageData.length; ++i){
								appendMessage( messageData[i].message_body, chatPartnerImg, messageData[i].created, false );
							}
						}else{
							//console.log("empty object");
						}
					});
				}else{
					console.log("No such id!");
				}
			}, 1000);
		}
	</script>
	
		
	<br>

<!-- Footer -->
<footer class="w3-container w3-theme-d3 w3-padding-16">
  <h5>Footer</h5>
</footer>

<footer class="w3-container w3-theme-d5">
  <p>Powered by Hello Kitty !!!</p>
</footer>	 
			
</body>
</html>