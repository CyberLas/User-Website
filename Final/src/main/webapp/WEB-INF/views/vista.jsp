<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/CSS/Style.css"  media="screen">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.28.14/js/jquery.tablesorter.min.js"></script>
</head>
<body>
		<h1>Pregunta 2</h1> <input type="checkbox"  id="mpopupLink1"  onclick="myFunction()">
				<table border="1" class="table">
		            <thead class="thead-dark">
		                <tr>
		                	<th>Id</th>
		                    <th>Descripcion</th>
		                    <th>Fecha</th>
		                    <th>Estado</th>
		                </tr>
		            </thead>
		            <tbody>
		                <c:forEach items="${Datos}" var="item">
							<tr>
								<td><p>${item.id}</p></td>
								<td><p>${item.descripcion}</p></td>
								<td><p>${item.fecha}</p></td>
								<td><p>${item.estado}</p></td>
							</tr>
						</c:forEach>
		            </tbody>
	 			</table>
	 			<br/>
	 			
	<h1>Pregunta 3</h1>
				<table border="1" class="table">
		            <thead class="thead-dark">
		                <tr>
		                	<th>Dato 1°</th>
		                    <th>Dato 2°</th>
		                    <th>Dato 3°</th>
		                    <th>Dato 4°</th>
		                    <th>Dato 5°</th>
		                </tr>
		            </thead>
		            <tbody>
							<tr>
								<td><input type="checkbox"  id="mpopupLink1"  onclick="myFunction()"></td>
								<td><input type="checkbox"  id="mpopupLink2"  onclick="myFunction()"></td>
								<td><input type="checkbox"  id="mpopupLink3"  onclick="myFunction()"></td>
								<td><input type="checkbox"  id="mpopupLink4"  onclick="myFunction()"></td>
								<td><input type="checkbox"  id="mpopupLink5"  onclick="myFunction()"></td>
							</tr>
		            </tbody>
	 			</table>
	 			
	<div id="mpopupBox" class="mpopup">
	    <div class="mpopup-content">
	        <div class="mpopup-head">
	            <span class="close">×</span>
	            <h2> Datos </h2>
	        </div>
	        <div class="mpopup-main">
	            <table border="1">
		            <thead>
		                <tr>
		                	<th>N°</th>
		                    <th>Nombre</th>
		                    <th>Numero</th>
		                    <th>Cuadra</th>
		                </tr>
		            </thead>
		            <tbody>
		            	<%int a=1;%>
		                <c:forEach items="${Datos}" var="item" begin="0" end="0">
							<tr>
								<td><%=a%></td>
								<td><p>${item.id}</p></td>
								<td><p>${item.descripcion}</p></td>
								<td><p>${item.fecha}</p></td>
								<td><p>${item.estado}</p></td>
							</tr>
							<%a++;%>
						</c:forEach>
		            </tbody>
	 			</table>
	        </div>
	    </div>
	</div>
	<div id="mpopupBox2" class="mpopup">
	    <div class="mpopup-content">
	        <div class="mpopup-head">
	            <span class="close2">×</span>
	            <h2> Datos </h2>
	        </div>
	        <div class="mpopup-main">
	            <table border="1">
		            <thead>
		                <tr>
		                	<th>N°</th>
		                    <th>Nombre</th>
		                    <th>Numero</th>
		                    <th>Cuadra</th>
		                </tr>
		            </thead>
		            <tbody>
		            	<%int b=1;%>
		                <c:forEach items="${Datos}" var="item" begin="1" end="1">
							<tr>
								<td><%=b%></td>
								<td><p>${item.id}</p></td>
								<td><p>${item.descripcion}</p></td>
								<td><p>${item.fecha}</p></td>
								<td><p>${item.estado}</p></td>
							</tr>
							<%b++;%>
						</c:forEach>
		            </tbody>
	 			</table>
	        </div>
	    </div>
	</div>
	<div id="mpopupBox3" class="mpopup">
	    <div class="mpopup-content">
	        <div class="mpopup-head">
	            <span class="close3">×</span>
	            <h2> Datos </h2>
	        </div>
	        <div class="mpopup-main">
	            <table border="1">
		            <thead>
		                <tr>
		                	<th>N°</th>
		                    <th>Nombre</th>
		                    <th>Numero</th>
		                    <th>Cuadra</th>
		                </tr>
		            </thead>
		            <tbody>
		            	<%int c=1;%>
		                <c:forEach items="${Datos}" var="item" begin="2" end="2">
							<tr>
								<td><%=c%></td>
								<td><p>${item.id}</p></td>
								<td><p>${item.descripcion}</p></td>
								<td><p>${item.fecha}</p></td>
								<td><p>${item.estado}</p></td>
							</tr>
							<%c++;%>
						</c:forEach>
		            </tbody>
	 			</table>
	        </div>
	    </div>
	</div>
	<div id="mpopupBox4" class="mpopup">
	    <div class="mpopup-content">
	        <div class="mpopup-head">
	            <span class="close4">×</span>
	            <h2> Datos </h2>
	        </div>
	        <div class="mpopup-main">
	            <table border="1">
		            <thead>
		                <tr>
		                	<th>N°</th>
		                    <th>Nombre</th>
		                    <th>Numero</th>
		                    <th>Cuadra</th>
		                </tr>
		            </thead>
		            <tbody>
		            	<%int d=1;%>
		                <c:forEach items="${Datos}" var="item" begin="3" end="3">
							<tr>
								<td><%=d%></td>
								<td><p>${item.id}</p></td>
								<td><p>${item.descripcion}</p></td>
								<td><p>${item.fecha}</p></td>
								<td><p>${item.estado}</p></td>
							</tr>
							<%d++;%>
						</c:forEach>
		            </tbody>
	 			</table>
	        </div>
	    </div>
	</div>
	<div id="mpopupBox5" class="mpopup">
	    <div class="mpopup-content">
	        <div class="mpopup-head">
	            <span class="close5">×</span>
	            <h2> Datos </h2>
	        </div>
	        <div class="mpopup-main">
	            <table border="1">
		            <thead>
		                <tr>
		                	<th>N°</th>
		                    <th>Nombre</th>
		                    <th>Numero</th>
		                    <th>Cuadra</th>
		                </tr>
		            </thead>
		            <tbody>
		            	<%int e=1;%>
		                <c:forEach items="${Datos}" var="item" begin="4" end="4">
							<tr>
								<td><%=e%></td>
								<td><p>${item.id}</p></td>
								<td><p>${item.descripcion}</p></td>
								<td><p>${item.fecha}</p></td>
								<td><p>${item.estado}</p></td>
							</tr>
							<%e++;%>
						</c:forEach>
		            </tbody>
	 			</table>
	        </div>
	    </div>
	</div>
	<script>
		var mpopup = document.getElementById('mpopupBox');
		var mpopup2 = document.getElementById('mpopupBox2');
		var mpopup3 = document.getElementById('mpopupBox3');
		var mpopup4 = document.getElementById('mpopupBox4');
		var mpopup5 = document.getElementById('mpopupBox5');
		
		var mpLink = document.getElementById("mpopupLink1");
		var mpLink2 = document.getElementById("mpopupLink2");
		var mpLink3 = document.getElementById("mpopupLink3");
		var mpLink4 = document.getElementById("mpopupLink4");
		var mpLink5 = document.getElementById("mpopupLink5");

		var close = document.getElementsByClassName("close")[0];
		var close2 = document.getElementsByClassName("close2")[0];
		var close3 = document.getElementsByClassName("close3")[0];
		var close4 = document.getElementsByClassName("close4")[0];
		var close5 = document.getElementsByClassName("close5")[0];
		
		mpLink.onclick = function() {
		    mpopup.style.display = "block";
		}
		
		mpLink2.onclick = function() {
		    mpopup2.style.display = "block";
		}
		
		mpLink3.onclick = function() {
		    mpopup3.style.display = "block";
		}
		
		mpLink4.onclick = function() {
		    mpopup4.style.display = "block";
		}
		
		mpLink5.onclick = function() {
		    mpopup5.style.display = "block";
		}
		close.onclick = function() {
		    mpopup.style.display = "none";
		}
		close2.onclick = function() {
		    mpopup2.style.display = "none";
		}
		close3.onclick = function() {
		    mpopup3.style.display = "none";
		}
		close4.onclick = function() {
		    mpopup4.style.display = "none";
		}
		close5.onclick = function() {
		    mpopup5.style.display = "none";
		}
		window.onclick = function(event) {
		    if (event.target == mpopup) {
		        mpopup.style.display = "none";
		        
		    }
		}
		window.onclick = function(event) {
		    if (event.target == mpopup) {
		        mpopup2.style.display = "none";
		        
		    }
		}
		window.onclick = function(event) {
		    if (event.target == mpopup) {
		        mpopup3.style.display = "none";
		        
		    }
		}
		window.onclick = function(event) {
		    if (event.target == mpopup) {
		        mpopup4.style.display = "none";
		        
		    }
		}
		window.onclick = function(event) {
		    if (event.target == mpopup) {
		        mpopup5.style.display = "none";
		        
		    }
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  
</body>
</html>
