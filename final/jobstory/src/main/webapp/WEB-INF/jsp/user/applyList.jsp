<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/mypage_user.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
<style>
html {
	background-color: white;
}

.tabs a {
	-ms-flex-align: center;
	align-items: center;
	color: #ffffff;
}

.tabs a:hover {
	color: #ffffff;
	border-bottom-color: #ffffff;
	text-decoration: none;
}

.tabs li.is-active a {
	color: rgb(242, 177, 52);
	font-weight: bold;
	border-bottom: 1px solid #ffffff;
}

.tabs a {
	border-bottom: 1px solid #ffffff;
}

.btn {
	display: inline-block;
	padding: 6px 37px;
	margin-bottom: 0;
	font-size: 12px;
	font-weight: 400;
	line-height: 1.428571;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.btn-info {
	background-color: rgb(79, 185, 159);
	color: white;
}

.btn-info:hover {
	background-color: rgb(6, 133, 135);
	color: rgb(242, 177, 52);
}

.following {
	margin-top: 25px;
	font-weight: bold;
}
/*카드 부분*/
.card {
	box-shadow: 10px 0px 10px rgba(0, 0, 0, 0.2),
				0px 10px 20px rgba(0,0,0,0.2);
}
.card, .card-content {
	border:3px solid white;
}

.allcard {
	max-width: 1170px;
	margin-left: auto;
	margin-right: auto;
	overflow: scroll;
	height: 470px;
	margin-top: 10%;
/* 	background-color: #dddddd; */
	border-width: 4px;
	border-style: inset;
	border-color: white;
}

.cardWrap {
	width: 25%;
	float: left;
	padding: 5px 15px;
	margin-top: 15px;
}

.cardWrap .card {
	width: 96%;
}

#cardImg {
    width: 235px;
    max-width: 235px;
    height: 237px;
    margin-left: -2px;
    margin-top: -1px;}

.card-image {
	width: 240px;
	height: 240px;
}

.card-content {
	height: 150px;
}

#listtitle {
    text-align: center;
    background-color: black;
    color: white;
    border-radius: 80px;
    font-size: 13px;
    line-height: 24px;
    margin-left: 1%;
    margin-top: -5%;
    clear: both;
    display: inline-block;
    padding-left: 12px;
    padding-right: 12px;
}

#listcontent {
	margin-left: 1%;
	font-size: 12px;
}

.card-btn {
	text-align: center;
}

.card-btn>button {
	width: 112px;
	padding: 6px 0;
	border: 1px solid white;
}

.container.myprofile .myprofile-options .tabs ul li.link a {
	margin-bottom: 20px;
	padding: 20px;
	background-color: rgb(79, 185, 159);
}
.title {
	position: relative;
	/* border: 1px solid black; */
	color: rgb(79, 185, 159);
	font-weight: bold;
}
</style>
</head>
<body>
    <!-- 마이페이지 탭 -->
    <div class='columns'>
        <div class='container myprofile'>
          <div class='modal' id='edit-preferences-modal'>
            <div class='modal-background'></div>
            <div class='modal-card'>
              <header class='modal-card-head'>
                <p class='modal-card-title' >Edit Preferences</p>
                <button class='delete' ></button>
              </header>
              <section class='modal-card-body'>
                <label class='label'>Name</label>
                <p class='control'>
                  <input class='input' placeholder='Text input' type='text'>
                </p>
                <label class='label'>Username</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='pmillerk'>
                </p>
                <label class='label'>Email</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Email input' type='text' value='hello@'>
                  <i class='fa fa-warning'></i>
                  <span class='help is-danger'>This email is invalid</span>
                </p>
                <div class='control'>
                  <div class='control-label is-pulled-left'>
                    <label class='label'>Date of Birth</label>
                  </div>
                  <span>
                    <span class='select'>
                      <select>
                        <option>Month</option>
                        <option>With options</option>
                      </select>
                    </span>
                    <span class='select'>
                      <select>
                        <option>Day</option>
                        <option>With options</option>
                      </select>
                    </span>
                    <span class='select'>
                      <select>
                        <option>Year</option>
                        <option>With options</option>
                      </select>
                    </span>
                  </span>
                </div>
                <label class='label'>Description</label>
                <p class='control'>
                  <textarea class='textarea' placeholder='Describe Yourself!'></textarea>
                </p>
                <div class='content'>
                  <h1>Optional Information</h1>
                </div>
                <label class='label'>Phone Number</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='+1 *** *** 0535'>
                </p>
                <label class='label'>Work</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='Greater Washington Publishing'>
                </p>
                <label class='label'>School</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='George Mason University'>
                </p>
              </section>
              <footer class='modal-card-foot'>
                <a class='button is-primary modal-save'>Save changes</a>
                <a class='button modal-cancel'>Cancel</a>
              </footer>
            </div>
          </div>
          
        <!-- 초록바 -->  
		<div class='section myprofile-heading'>
				<div class='columns is-mobile is-multiline'>
					<div class='column is-2'>
						<span class='header-icon user-myprofile-image'> <c:if
								test="${empty user.imgSerPath}">
								<img src="${user.imgSerName}" class='userpic' alt=""
									style="border: 2px solid rgb(6, 133, 135); border-radius: 10%">
							</c:if> <c:if test="${not empty user.imgSerPath}">
								<img src="${user.imgSerPath}/${user.imgSerName}" class='userpic'
									alt=""
									style="border: 2px solid rgb(6, 133, 135); border-radius: 10%">
							</c:if>
						</span>
					</div>
					<div class='column is-4-tablet is-10-mobile name'>
						<p style="margin-left: -52%; margin-top: 14%;">
							<span class='title is-bold' style="color: rgb(17, 47, 65);">${user.name}</span>
							<br> <a class='button is-primary is-outlined' href='#'
								id='edit-preferences'
								style="margin: 10% 0; text-decoration: none"> 내 정보 수정 </a>
						</p>
					</div>
					<div class='column is-2-tablet is-4-mobile has-text-centered'
						style="border-left: 1px solid rgb(255, 255, 255, 0); margin-left: -16%;">
						<p class='stat-val'>7</p>
						<p class='stat-key'>좋아요</p>
					</div>
					<div class='column is-2-tablet is-4-mobile has-text-centered'>
						<p class='stat-val'>3</p>
						<p class='stat-key'>싫어요</p>
					</div>
					<div class='column is-2-tablet is-4-mobile has-text-centered'>
						<p class='stat-val'>15</p>
						<p class='stat-key'>지원현황</p>
					</div>
				</div>
			</div>
			<div class='myprofile-options is-fullwidth'
				style="margin-top: -6.5%;">
				<div class='tabs is-fullwidth is-medium'>
					<ul>
						<li class='link'><a
							href="<c:url value="/user/resumeList.do"/>"> <span
								class='icon'> <i class='fa fa-thumbs-up'></i>
							</span> <span>이력서 관리</span>
						</a></li>
						<li class='link is-active'><a
							href="<c:url value="/user/applyList.do"/>"> <span
								class='icon'> <i class='fa fa-thumbs-up'></i>
							</span> <span>입사지원 리스트</span>
						</a></li>
						<li class='link'><a href="<c:url value="/user/scrab.do"/>">
								<span class='icon'> <i class='fa fa-thumbs-up'></i>
							</span> <span>스크랩한 공고</span>
						</a></li>
						<li class='link'><a
							href="<c:url value="/user/myCalendar.do"/>"> <span
								class='icon'> <i class='fa fa-search'></i>
							</span> <span>나만의 공채달력</span>
						</a></li>
					</ul>
				</div>
			</div>
	
<!-- 각 메뉴 휘하 내용 -->	
<div class="allcard">
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/카카오.png'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">비트캠프</p>
                  <p id="listcontent">지원현황 : 1000명</p>
                  <p id="listcontent">접수일자 : 2018-12-26 ~ 2019-01-17</p>
                  <p id="listcontent">발표일자 : 2019-02-01</p>
              </div>
          </div>
          <div class="card-btn">
              <button type="button" class="btn btn-primary">공고보기</button>
              <button type="button" class="btn btn-danger">삭제하기</button>
          </div>
      </div>
    </div>
    
  </div>	
	 <script>
        $(() => {
            $('#edit-preferences').click(function(){
            $('#edit-preferences-modal').addClass('is-active');
        });
            $('.modal-card-head button.delete, .modal-save, .modal-cancel').click(function(){
                $('#edit-preferences-modal').removeClass('is-active');
            });
        });

        $(".link").click(function () {
                $(this).addClass('is-active');
                $(this).siblings().removeClass('is-active');
        })
      </script>
</body>
</html>