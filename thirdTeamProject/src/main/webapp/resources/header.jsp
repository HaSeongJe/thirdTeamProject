<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta  charset=" UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">									
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>									
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>									
<title>title</title>
<style>
<!-- 드롭다운 -->
body { margin: 0; }
.zeta-menu-bar {
  background: black;
  display: inline-block;
  width: 100%;
}
.zeta-menu { margin: 0; padding: 0; }
.zeta-menu li {
  float: left;
  list-style:none;
  position: relative;
}
.zeta-menu li:hover { background: white; }
.zeta-menu li:hover>a { color: hotpink; }
.zeta-menu a {
  color: white;
  display: block;
  padding: 10px 20px;
  text-decoration: none;
}
.zeta-menu ul {
  background: #eee;
  border: 1px solid silver;
  display: none;
  padding: 0;
  position: absolute;
  left: 0;
  top: 100%;
  width: 180px;
}
.zeta-menu ul li { float: none; }
.zeta-menu ul li:hover { background: #ddd; }
.zeta-menu ul li:hover a { color: black; }
.zeta-menu ul a { color: black; }
.zeta-menu ul ul { left: 100%; top: 0; }
.zeta-menu ul ul li {float:left; margin-right:10px;}
.menubar li:hover ul {
	display:block;   /* 마우스 커서 올리면 서브메뉴 보이게 하기 */
} <!-- 드롭다운 -->

</style>
<script>
//드롭다운
$(function(){
	  $(".zeta-menu li").hover(function(){
	    $('ul:first',this).show();
	  }, function(){
	    $('ul:first',this).hide();
	  });
	  $(".zeta-menu>li:has(ul)>a").each( function() {
	    $(this).html( $(this).html()+' &or;' );
	  });
	  $(".zeta-menu ul li:has(ul)")
	    .find("a:first")
	    .append("<p style='float:right;margin:-3px'>&#9656;</p>");
	}); //드롭다운

</script>
</head>
<body>
<!-- 로그인 부분 -->
<div class="container-fluid">
	<div class="row">
	
		<div class="col-md-3">
		</div>
		
		<div class="col-md-6">
		<!-- 로그인시 -->
		<c:if test="${loginSession != null }">
			<div align="right">
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					*** 님 환영합니다.
				</button> 
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					내정보
				</button> 
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					장바구니
				</button>
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					주문목록
				</button>
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					고객센터
				</button>
			</div>
		</c:if>
		<!-- /로그인시 -->
		
		<!-- 비로그인시 -->
		<c:if test="${loginSession == null }">
			<div align="right">
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					로그인
				</button> 
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					내정보
				</button> 
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					장바구니
				</button>
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					주문목록
				</button>
				<button class="btn btn-secondary" type="button" onclick="location.href='#'">
					고객센터
				</button>
			</div>
		</c:if>
		<!-- /비로그인시 -->
		</div>
		
		<div class="col-md-3">
		</div>
	</div>
</div>
<!-- /로그인 부분 -->

<hr>

<!-- 검색 + 이미지 부분 -->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-3">
		</div>
		
		<div class="col-md-3" >					
			<!-- 이미지 -->
			<img alt="Bootstrap Image Preview"
			src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" 
			class="rounded-circle" />
			<!-- /이미지 -->
		</div>
		
		
		<div class="col-md-2">
			<!-- 검색 -->
			<input class="form-control mr-sm-1" type="text" /> 
			
			<!-- 검색 -->	
		</div>
		
		<div class="col-md-1">
			<!-- 검색 -->
			<button type="button" class="btn glyphicon glyphicon-search"></button>
			<!-- 검색 -->	
		</div>
			  
		<div class="col-md-3">
		</div>
	</div>
</div>

<hr>
<!-- /검색 + 이미지 부분 -->
<div class="container-fluid">
	<div class="row">
	
		<div class="col-md-3">
		</div>
	
	
		<div class="col-md-6">
			<!-- 드롭다운 메뉴부분 -->
			<div class='zeta-menu-bar'>
			  <ul class="zeta-menu">
			    <li><a href="#">홈</a></li>
			    <li><a href="#">1번 메뉴</a></li>
			    <li><a href="#">2번 메뉴</a>
			      <ul>
			        <li><a href="#">2-A 메뉴</a></li>
			        <li><a href="#">2-B 메뉴</a>
			          <ul>
			            <li><a href="#">2-B-1 메뉴</a></li>
			            <li><a href="#">2-B-2 메뉴</a></li>
			          </ul>
			        </li>
			        <li><a href="#">2-C 메뉴</a></li>
			        <li><a href="#">2-D 메뉴</a>
			          <ul>
			  	          <li><a href="#">2-D-1 메뉴</a></li>
			            <li><a href="#">2-D-2 메뉴</a></li>
			            <li><a href="#">2-D-3 메뉴</a></li>
			          </ul>
			        </li>
			      </ul>
			    </li>
			    <li><a href="#">3번 메뉴</a>
			      <ul>
			        <li><a href="#">3-A 메뉴</a></li>
			        <li><a href="#">3-B 메뉴</a></li>
			      </ul>
			    </li> 
			    <li><a href="#">4번 메뉴</a></li> 
			  </ul>
			</div>
			<!-- 드롭다운 메뉴부분 -->
		</div>
	
	
		<div class="col-md-3">
		</div>
	</div>
</div>





</body>
</html>