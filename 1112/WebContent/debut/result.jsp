<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Debut</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
<style type="text/css">
</style>
<link href="layout_rosemont.css" rel="stylesheet" type="text/css" />
<script src="index_js.js" type="text/javascript"></script>
</head>

<body onload="MM_preloadImages('images/nav1.png','images/member1.png')">
<!-- TODO Loding이미지 구현-->
<!--<div id="loading"><img id="loading-image" src="images/loading.gif" alt="Loading..." /></div>-->

<!--wrap영역-->
<div id="wrap">

	<!--page_header영역-->
  <div id="page_header">
  	<!--logo-->
  	<div id="logo"><a href="#"><img src="images/logo.png" width="161" height="52" /></a></div>
    <!--아이콘-->
    <div class="icons">
      <div class="icon"><img src="images/member.png" width="25" height="25" id="Image8" onmouseover="MM_swapImage('Image8','','images/member1.png',1)" onmouseout="MM_swapImgRestore()" /></div>
      <div class="icon"><img src="images/search.png" width="25" height="25" id="Image9" onmouseover="MM_swapImage('Image9','','images/search1.png',1)" onmouseout="MM_swapImgRestore()" /></div>
      <div class="icon"><img src="images/shoppingbag.png" width="25" height="25" id="Image10" onmouseover="MM_swapImage('Image10','','images/shoppingbag1.png',1)" onmouseout="MM_swapImgRestore()" /></div>
    </div>
    
    <!--nav_bar영역-->
    <div id="nav_bar">
   	  <ul id = "nav" class = "navHorizontal">
        	<li class = "navList"><a href="#"><img src="images/gray_07.png" width="76" height="29" id="Image1" onmouseover="MM_swapImage('Image1','','images/nav1.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
            <li class = "navList"><a href="#"><img src="images/gray_09.png" width="89" height="29" id="Image2" onmouseover="MM_swapImage('Image2','','images/nav2.png',1)" onmouseout="MM_swapImgRestore()"/></a></li>
            <!--TODO ul 태그 삽입 및 subMenu구현-->
        <li class = "navList"><a href="#"><img src="images/gray_11.png" width="81" height="29" id="Image3" onmouseover="MM_swapImage('Image3','','images/nav3.png',1)" onmouseout="MM_swapImgRestore()"/></a></li>
            <!--TODO ul 태그 삽입 및 subMenu구현-->
        <li class = "navList"><a href="#"><img src="images/gray_13.png" width="65" height="29" id="Image4" onmouseover="MM_swapImage('Image4','','images/nav4.png',1)" onmouseout="MM_swapImgRestore()"/></a></li>
            <!--TODO ul 태그 삽입 및 subMenu구현-->
        <li class = "navList"><a href="#"><img src="images/gray_15.png" width="94" height="29" id="Image5" onmouseover="MM_swapImage('Image5','','images/nav5.png',1)" onmouseout="MM_swapImgRestore()"/></a></li>
            <!--TODO ul 태그 삽입 및 subMenu구현-->
        <li class = "navList"><a href="#"><img src="images/gray_17.png" width="46" height="29" id="Image6" onmouseover="MM_swapImage('Image6','','images/nav6.png',1)" onmouseout="MM_swapImgRestore()"/></a></li>
            <!--TODO ul 태그 삽입 및 subMenu구현-->
        <li class = "navList"><a href="#"><img src="images/gray_19.png" width="53" height="29" id="Image7" onmouseover="MM_swapImage('Image7','','images/nav7.png',1)" onmouseout="MM_swapImgRestore()"/></a></li>
            
      </ul>
    </div>
  </div>
  
  
    <!--page_center영역-->
  <div id="page_center">
    <div class="brands">
    <%  
					//String uploadPath = request.getRealPath("/movies");//만든 movies폴더 이름 쓰기
 					String uploadPath = "C:\\Users\\kimna\\workspace\\1112\\WebContent\\debut\\watches";
					
  				  int maxSize =1024 *1024 *10;
   
 				   Connection conn = ConnectionProvider.getConnection();//데이터베이스 처리하는 애니까 일단 주석처리
 					   String watchName = "";
 					  String brand = "";
 					  int price=0;
 					String fileName = "";//글로벌 변수로 선언
 					String memo = "";
 				   try{
      
  				  MultipartRequest multi =new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
         			//이미지 포함해서 멀티로 넘어온 애들을 받아주는 객체
  					     watchName = multi.getParameter("watchName");
   					     brand = multi.getParameter("brand");
   					     price = Integer.parseInt(multi.getParameter("price"));
    				    
    				    fileName = multi.getFilesystemName("watchImage");
    				    memo = multi.getParameter("memo");
    				    Watch watch = new Watch(watchName, brand, price,fileName, memo);//movie 객체 생성
 					       WatchDao dao = new WatchDao();//dao객체 생성
       					 dao.insert(conn, watch);//dao의 insert메소드 실행
        
 					   } catch (Exception e) {}
				%>
                <h2>시계 정보가 잘 저장되었습니다</h2>
         <%=watchName %>:<%=brand %>:<%=price %>:<%=fileName %>:<%=memo %>
    
      <div class="rosemontImage"></div>
      
    </div>
 	<div class="recommend"><img src="images/recommend.png" width="905" height="358" /></div>
 	<div class="banner"><img src="images/banner.png" width="905" height="284" /></div>
 	<div class="sidemenu"><img src="images/fixed.png" width="107" height="94" /></div>
    
    
    

  
  
  
  </div>
  
  
    <!--page_footer영역-->
  <div id="page_footer">
  	<div class="footer_list">
    	<ul>
        	<li class = "footerList"><a href = "#">Our Company</a></li>
            <li class = "footerList"><a href = "#">FAQ</a></li>
            <li class = "footerList"><a href = "#">Shop Guide</a></li>
            <li class = "footerList"><a href = "#">개인정보처리방침</a></li>
        </ul>
    </div>
    <div class="footer_info">
    상호. (주)Debut. 김나은 김영한 이수빈. po02026@kpu.ac.kr 전화. 010-9594-6165<br />
주소. 경기도 시흥시 정왕동 2121
사업자등록번호. 1418-314316(사업자정보확인) 개인정보 보호 책임자. 김나은 김영한 이수빈<br /><br />
(c) Debut. all rights reserved. designed by Debut.</div>
  </div>

</div>

</div>
</body>
</html>
