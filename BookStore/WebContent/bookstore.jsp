<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<html>
<head>
	<title>Welcome To Book Store Admin View</title>
	<!--  <script type="text/javascript" src="<c:url value="/js/jquery-1.7.1.min.js" />"></script>-->
	<!-- <script>
	$(document).ready(function(){
		alert("Jquery Loaded");
	});
	</script>
	 -->
	<style type="text/css">
		body {
			font-family: verdana;
			font-size: 12px;
			margin: 40px;
		}
		.bookTable, .bookTable td {
			border-collapse: collapse;
			border: 0px solid #aaa;
			margin: 2px;
			padding: 2px 2px 2px 10px;
			font-size: 12px;
		}
		.bookTable, .bookTable tr
		{
		border: 1px solid #aaa;
		text-align:left;
		}
		.bookTable th {
			font-weight: bold;
			font-size: 12px;
			background-color: #5C82FF;
			color: white;
			padding-right: 20px;
		}
		.bookLabel {
			font-family: verdana;
			font-size: 12px;
			font-weight: bold;
		}
		a, a:AFTER {
			color: blue;
		}
		.classname {
	-moz-box-shadow:inset 0px 1px 0px 0px #97c4fe;
	-webkit-box-shadow:inset 0px 1px 0px 0px #97c4fe;
	box-shadow:inset 0px 1px 0px 0px #97c4fe;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #3d94f6), color-stop(1, #1e62d0) );
	background:-moz-linear-gradient( center top, #3d94f6 5%, #1e62d0 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3d94f6', endColorstr='#1e62d0');
	background-color:#3d94f6;
	-webkit-border-top-left-radius:15px;
	-moz-border-radius-topleft:15px;
	border-top-left-radius:15px;
	-webkit-border-top-right-radius:15px;
	-moz-border-radius-topright:15px;
	border-top-right-radius:15px;
	-webkit-border-bottom-right-radius:0px;
	-moz-border-radius-bottomright:0px;
	border-bottom-right-radius:0px;
	-webkit-border-bottom-left-radius:0px;
	-moz-border-radius-bottomleft:0px;
	border-bottom-left-radius:0px;
	text-indent:0;
	border:1px solid #337fed;
	display:inline-block;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	font-style:normal;
	height:40px;
	line-height:40px;
	width:86px;
	text-decoration:none;
	text-align:center;
	text-shadow:1px 1px 0px #1570cd;
}
.classname:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #1e62d0), color-stop(1, #3d94f6) );
	background:-moz-linear-gradient( center top, #1e62d0 5%, #3d94f6 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#1e62d0', endColorstr='#3d94f6');
	background-color:#1e62d0;
}.classname:active {
	position:relative;
	top:1px;
}

		
	</style>
	
	<style type="text/css">
.classname_delete {
	-moz-box-shadow:inset 0px 1px 0px 0px #fed897;
	-webkit-box-shadow:inset 0px 1px 0px 0px #fed897;
	box-shadow:inset 0px 1px 0px 0px #fed897;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #f6b33d), color-stop(1, #d29105) );
	background:-moz-linear-gradient( center top, #f6b33d 5%, #d29105 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f6b33d', endColorstr='#d29105');
	background-color:#f6b33d;
	-webkit-border-top-left-radius:15px;
	-moz-border-radius-topleft:15px;
	border-top-left-radius:15px;
	-webkit-border-top-right-radius:15px;
	-moz-border-radius-topright:15px;
	border-top-right-radius:15px;
	-webkit-border-bottom-right-radius:0px;
	-moz-border-radius-bottomright:0px;
	border-bottom-right-radius:0px;
	-webkit-border-bottom-left-radius:0px;
	-moz-border-radius-bottomleft:0px;
	border-bottom-left-radius:0px;
	text-indent:0;
	border:1px solid #eda933;
	display:inline-block;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	font-style:normal;
	height:36px;
	line-height:36px;
	width:106px;
	text-decoration:none;
	text-align:center;
	text-shadow:1px 1px 0px #cd8a15;
}
.classname_delete:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #d29105), color-stop(1, #f6b33d) );
	background:-moz-linear-gradient( center top, #d29105 5%, #f6b33d 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#d29105', endColorstr='#f6b33d');
	background-color:#d29105;
}.classname_delete:active {
	position:relative;
	top:1px;
}
</style>

<style type="text/css">
.classname_update {
	-moz-box-shadow:inset 0px 1px 0px 0px #caefab;
	-webkit-box-shadow:inset 0px 1px 0px 0px #caefab;
	box-shadow:inset 0px 1px 0px 0px #caefab;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #77d42a), color-stop(1, #5cb811) );
	background:-moz-linear-gradient( center top, #77d42a 5%, #5cb811 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77d42a', endColorstr='#5cb811');
	background-color:#77d42a;
	-webkit-border-top-left-radius:15px;
	-moz-border-radius-topleft:15px;
	border-top-left-radius:15px;
	-webkit-border-top-right-radius:15px;
	-moz-border-radius-topright:15px;
	border-top-right-radius:15px;
	-webkit-border-bottom-right-radius:0px;
	-moz-border-radius-bottomright:0px;
	border-bottom-right-radius:0px;
	-webkit-border-bottom-left-radius:0px;
	-moz-border-radius-bottomleft:0px;
	border-bottom-left-radius:0px;
	text-indent:0;
	border:1px solid #268a16;
	display:inline-block;
	color:#306108;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	font-style:normal;
	height: 36px;
    line-height: 41px;
	width:116px;
	text-decoration:none;
	text-align:center;
	text-shadow:1px 1px 0px #aade7c;
}
.classname_update:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #5cb811), color-stop(1, #77d42a) );
	background:-moz-linear-gradient( center top, #5cb811 5%, #77d42a 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5cb811', endColorstr='#77d42a');
	background-color:#5cb811;
}.classname_update:active {
	position:relative;
	top:1px;
}</style>

<style>

.CSSTableGenerator {
	margin:0px;padding:0px;
	width:100%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
	
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
	
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
	
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}.CSSTableGenerator table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
}.CSSTableGenerator tr:hover td{
	
}
.CSSTableGenerator tr:nth-child(odd){ background-color:#ffaa56; }
.CSSTableGenerator tr:nth-child(even)    { background-color:#ffffff; }.CSSTableGenerator td{
	vertical-align:middle;
	
	
	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:7px;
	font-size:10px;
	font-family:Arial;
	font-weight:normal;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #ff7f00 5%, #ff7f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff7f00), color-stop(1, #ff7f00) );
	background:-moz-linear-gradient( center top, #ff7f00 5%, #ff7f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff7f00", endColorstr="#ff7f00");	background: -o-linear-gradient(top,#ff7f00,ff7f00);

	background-color:#ff7f00;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #ff7f00 5%, #ff7f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff7f00), color-stop(1, #ff7f00) );
	background:-moz-linear-gradient( center top, #ff7f00 5%, #ff7f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff7f00", endColorstr="#ff7f00");	background: -o-linear-gradient(top,#ff7f00,ff7f00);

	background-color:#ff7f00;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}

</style>

	
	<link rel="stylesheet" type="text/css"  href="<c:url value="/resources/styles.css" />" />
	<link rel="stylesheet" type="text/css"  href="css/styles.css" />
	<script type="text/javascript">
	function deleteBook(bookId){
		if(confirm('Do you want to delete this Book ?')){
			var url = 'delete/'+bookId;
			window.location.href = url;
		}
	}
	</script>
</head>
<body>

<h2>Welcome To Book Store Admin View</h2>
<p style="color:green;font-weight:bold;">
  <!-- <a href="#" class="classname">Add Book</a> -->

</p>
<c:url var="action" value="/book/add.html" ></c:url>
<form:form method="post" action="${action}" commandName="book" cssClass="bookForm">
	<table>
	<c:if test="${!empty book.bookName}">
	<tr>
		<td>
			<form:label path="id" cssClass="bookLabel">
				<spring:message code="label.bookId" />
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="bookName" cssClass="bookLabel">
				<spring:message code="label.bookName" />
			</form:label>
		</td>
		<td>
			<form:input path="bookName" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="author" cssClass="bookLabel">
				<spring:message code="label.author" />
			</form:label>
		</td>
		<td>
			<form:input path="author" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="price" cssClass="bookLabel">
				<spring:message code="label.price" />
			</form:label>
		</td>
		<td>
			<form:input path="price" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="quantity" cssClass="bookLabel">
				<spring:message code="label.qty" />
			</form:label>
		</td>
		<td>
			<form:input path="quantity" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty book.bookName}">
				<input type="submit"
					value="<spring:message code="label.editbook"/>"  class="classname_edit"/>
			</c:if>
			<c:if test="${empty book.bookName}">
				<input type="submit"
					value="<spring:message code="label.addbook"/>"  class="classname"/>
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<h3>List of Books in BookStore</h3>
<c:if test="${!empty bookList}">

	<table class="bookTable">
	<tr>
		<!-- <th width="180">Book Name</th>
		<th width="160">Author Name</th>
		<th width="60">Price</th>
		<th width="80">Quantity</th>
		<th width="60">Action</th>
		<th width="60"></th>
		 -->
		 <th>Book Name</th>
		<th>Author Name</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Action</th>
		<th></th>
	</tr>
	<c:forEach items="${bookList}" var="book">
		<tr>
			<td>
      <a href="<c:url value='/edit/${book.id}' />" >${book.bookName}</a>
      </td>
			<td>${book.author}</td>
			<td>${book.price}</td>
			<td>${book.quantity}</td>
			<td> 
			<a href="#" onclick="javascript:deleteBook(${book.id})" class="classname_delete">
					<spring:message code="label.deletebook"/>
			</a></td><td>
			<!-- <img src="<c:url value='/images/vcard_delete.png' />"
				title="Delete Book"
				onclick="javascript:deleteBook(${book.id})" /> -->
				<a href="<c:url value='/edit/${book.id}' />"  class="classname_update">
					<spring:message code="label.editbook"/>
				</a>
			</td>
		</tr>
	</c:forEach>
	</table>
</c:if>


</body>
</html>