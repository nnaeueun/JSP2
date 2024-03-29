<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %><!-- 프레픽스 c를 쓰겠다고 선언함 -->
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Div활용</title>

<link href="design1.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 22px;
	top: 173px;
	width: 160px;
	height: 180px;
	z-index: 1;
}
#apDiv2 {
	position: absolute;
	left: 176px;
	top: 155px;
	width: 250;
	height: 250;
	z-index: 2;
}
#apDiv3 {
	position: absolute;
	left: 781px;
	top: 176px;
	width: 210;
	height: 230;
	z-index: 1;
}
#apDiv4 {
	position: absolute;
	left: 586px;
	top: 156px;
	width: 171px;
	height: 213px;
	z-index: 2;
}
#apDiv5 {
	position: absolute;
	left: 361px;
	top: 131px;
	width: 274px;
	height: 267px;
	z-index: 3;
}
</style>
</head>

<body>
<div id="apDiv2"></div>
<div id="apDiv3"></div>
<div class="page_header">
	<div class="toplogo"><img src="images/logo_top.jpg" width="202" height="28" alt="designart" />
    </div>
    <div class="topmini">
      <ul>
        <li><a href="#">FAVORITE </a></li>
        <li><a href="#">LOGIN </a></li>
        <li><a href="#">JOINUS </a></li>
        <li><a href="#">CART</a></li>
        <li><a href="#">ORDER</a></li>
        <li><a href="#">MYPAGE</a></li>
      </ul>
    </div>
	<div class="topnav">
	  <ul><li><a href="#" class="rollover"><img src="images/topmenu01.jpg"><img src="images/topmenu01_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu02.jpg"><img src="images/topmenu02_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu03.jpg"><img src="images/topmenu03_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu04.jpg"><img src="images/topmenu04_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu05.jpg"><img src="images/topmenu05_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu06.jpg"><img src="images/topmenu06_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu07.jpg"><img src="images/topmenu07_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu08.jpg"><img src="images/topmenu08_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu09.jpg"><img src="images/topmenu09_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu10.jpg"><img src="images/topmenu10_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu11.jpg"><img src="images/topmenu11_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu12.jpg"><img src="images/topmenu12_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu13.jpg"><img src="images/topmenu13_r.jpg" class="over"></a></li>
	    <li><a href="#" class="rollover"><img src="images/topmenu14.jpg"><img src="images/topmenu14_r.jpg" class="over"></a></li>      
      </ul>
	</div>
    <div class="topshadow"></div>
</div>


<div class="content">
	<div class="mainimg">
	  <%
	  			Connection conn = ConnectionProvider.getConnection();//1. 커넥션을 만ㄷ름
	  			List<Movie> movies = null;//4. 저장할 배열 선언하기
	  			try{//2. try catch문 만듦
	  				MovieDao dao = new MovieDao();//3. dao객체 생성
	  				movies = dao.selectList(conn);//4. movies에 저장
	  			}catch(SQLException e){}
	  
	  %>
	  <c:set var = "list" value = "<%=movies %>"/><!-- el으로 movies를 list로 바꿔줌 -->
	  <c:if test="${list != null }"><!-- if로 테스트 부터 해주어야함 -->
	  	<c:forEach var = "movie" items = "${list }">
	  			  <div class="movie"><img src = "/1111/movies/${movie.movieImage }"/></div>
	  		
	  	</c:forEach>
	  </c:if>

    
    </div>
	<div class="best">
   	  <div class="b_title"></div>
        <div class="prolist">
        	<div class="prolist1">
            	<img src="images/pro1.jpg" width="245" height="260" alt="심플미니귀걸이 목걸이Set" />
                <p>심플미니귀걸이 목걸이Set</p>
                <p>골드[ac2675]</p>
          </div>
        	<div class="prolist2">
            	<img src="images/pro2.jpg" width="245" height="260" alt="체인스퀘어 목걸이" />
                <p>체인스퀘어 목걸이</p>
                <p>G-holic[ac2838]</p>
            </div>            
        	<div class="prolist3">
            	<img src="images/pro3.jpg" width="245" height="260" alt="드라마틱 목걸이" />
                <p>심플미니귀걸이 목걸이Set</p>
                <p>G-holic[ac2838]</p>
            </div>   
        	<div class="prolist4">
            	<img src="images/pro4.jpg" width="245" height="260" alt="사각볼드 귀걸이" />
                <p>사각볼드 귀걸이</p>
                <p>G-holic[ac2839]</p>
            </div>                     
        	<div class="prolist5">
            	<img src="images/pro5.jpg" width="245" height="260" alt="블랙 숄더백" />
                <p>블랙 숄더백</p>
                <p>블랙[bag2005]</p>
            </div>
        	<div class="prolist6">
            	<img src="images/pro6.jpg" width="245" height="260" alt="화이트체인 핸드백" />
                <p>화이트체인 핸드백</p>
                <p>화이트[bag2012]</p>
            </div>            
        	<div class="prolist7">
            	<img src="images/pro7.jpg" width="245" height="260" alt="헐리우드 블랙 백팩" />
                <p>헐리우드 블랙 백팩</p>
                <p>블랙[bag3978]</p>
            </div>   
        	<div class="prolist8">
            	<img src="images/pro8.jpg" width="245" height="260" alt="브라운 숄더백" />
                <p>브라운 숄더백</p>
                <p>브라운[bag4578]</p>
            </div>              
        </div>
    </div>

	<div class="callcenter">
		<div class="notice">
		  <ul>
		    <li><a href="#">[2012/12/25]사랑해요 고객님 이벤트에...</a></li>
            <li><a href="#">[2012/12/25]신규회원 가입고객 이벤트 응모... </a></li>
            <li><a href="#">[2012/12/25]후기를 남겨주시면 할인쿠폰...</a></li>
	      </ul>
		</div>
        <div class="callban1"><img src="images/csbanner.jpg" alt="이용후기게시판, 질문대답,이용안내" width="293" height="91" usemap="#Map" border="0" />
          <map name="Map" id="Map">
            <area shape="rect" coords="8,7,89,88" href="#" />
            <area shape="rect" coords="103,8,191,87" href="#" />
            <area shape="rect" coords="202,10,287,87" href="#" />
          </map>
        </div>
        <div class="callban2"><img src="images/cscenter.jpg" width="320" height="91" alt="고객센터 : 070-7945-7700" />
        </div>    	
    </div>


</div>


	<div class="page_footer">

	<div class="rootbtn">
	  <ul>
	    <li><a href="#">회사소개</a></li>
        <li><a href="#">개인정보취급방침</a></li>
        <li><a href="#">서비스이용약관</a></li>
        <li><a href="#">이메일문의</a></li>
      </ul>
	</div>
    
	<div class="copy">
    	<p>상호:(주)디자인아트 플러스. 대표:임화연. 주소:서울구로구 구로동 에이스 하이앤드타워2차.</p>
        <p>copyrights ⓒ 2000 designartplus allrights reserved.
        </p> 
    </div>
    
</div>


</body>
</html>