<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "../header.jsp" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
/* header.css */
.hd { position: fixed;}
    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm { border:2px solid #333; padding: 24px; width: 700px; margin:50px auto; }
    .frm_tb { display:table; margin:40px auto;  }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell; }
    .frm_tb th { width:200px; height: 48px;  }
    .frm_tb td { width:500px; height: 48px; }
    .frm_tb label:before { content:"*"; }

    .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; 
    color:#f36; font-size:16px; text-indent:0.5em; float:left;}
    .in_btn { display:block; background-color:#333; min-width:120px; height: 32px; 
    line-height: 32px; border-radius:20px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; }
    .in_btn:hover { background-color: deepskyblue; }
    
    
    </style>
    <link rel="stylesheet" href="css/footer.css">
    <script>
    $(document).ready(function(){
        $(".to_top").attr("href", location.href);
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=300){
                $(".to_top").addClass("on");
                $(".to_top").attr("href", location.href);
            } else {
                $(".to_top").removeClass("on");
                $(".to_top").attr("href", location.href);
            }
        });
    });    
    </script>
</head>
<body>
<div class="wrap">
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">회원가입</h2>
            <div class="form_fr">
                <form name="frm1" action="joinPro.jsp" method="post" id="joinForm" class="frm" onsubmit="return joinAlert(this)">
                    <table class="frm_tb">
                        <tbody>
                            <tr>
                                <th><label for="id">아이디</label></th>
                                <td>
                                    <input type="text" id="id" name="id" class="in_dt" required autofocus>
                                    <button type="button" class="in_btn" onclick="idCheck()" style="margin-left:20px">아이디 중복 확인</button>
                                    <input type="hidden" name="idck" value="no"/>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="id">비밀번호</label></th>
                                <td>
                                    <input type="password" id="pw" name="pw" class="in_dt" required>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="id">비밀번호 확인</label></th>
                                <td>
                                    <input type="password" id="pw2" name="pw2" class="in_dt" required>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="name">이  름</label></th>
                                <td>
                                    <input type="text" id="name" name="name" class="in_dt" required>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="email">이메일</label></th>
                                <td>
                                    <input type="email" id="email" name="email" class="in_dt" required>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="tel">연락처</label></th>
                                <td>
                                    <input type="tel" id="tel" name="tel" class="in_dt" required>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="submit" class="in_btn">회원가입</button>
                                    <button type="reset" class="in_btn">취소</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
        <script>
        function joinAlert(f){
        	if(f.pw.value!=f.pw2.value){
        		alert("비밀번호와 같지 않습니다.");
        		return false;
        	}
        	if(f.idck.value!="yes"){
        		alert("아이디 중복체크 하지 않으셨습니다.");
        		return false;
        	}
        }
        function idCheck(){
        	var win = window.open("idCheck.jsp", "idCheckwin", "width=400, height=300");
        }
        </script>
    </section>
</div>
</div>
</body>
</html>