<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREND EATER</title>
<script src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<style>
.font-red {
color: red;
}

.background_r {
width: 100%;
height: 100%;
position: absolute;
background-color: #000000;
opacity:0.3;
z-index: 300;
}

.ctts_r {
display: inline-block;
width: 800px;
height: 714px;
position: absolute;
top: 50%;
left: 50%;
margin-top: -350px;
    margin-left: -420px;
background-color: #FFFFFF;
border: 1px solid #999999;
border-radius: 5px;
z-index: 400;
border-radius: 16px;
font-size: 16px;
}

.top_ctt>* {
margin-left: 20px
}

.top_ctt1 {
display: block;
position: absolute;
height: 50px;
width: 760px;
background-color: black;
text-align: left;
color: white;
margin-top: 20px;
top: 0px;
}

.top_ctt1>div {
display: inline-block;
margin: 14px;
font-size: 18px;
}

.top_ctt2 {
display: block;
position: absolute;
height: 24px;
    width: 746px;
background-color: #f7f7f7;
text-align: left;
top: 70px;
padding-left: 14px;
line-height: 30px;
}

.top_ctt3 {
display: block;
position: absolute;
height: 40px;
width: 746px;
background-color: #f7f7f7;
text-align: left;
top: 94px;
padding-left: 14px;
line-height: 40px;
}

.top_ctt4 {
display: block;
position: absolute;
height: 190px;
width: 758px;
border: 1px solid #cccccc;
text-align: left;
top: 134px;
}

.top_ctt4-1 {
display: inline-block;
position: absolute;
top: 0px;
width: 190px;
text-align: center;
height: 192px;
background-color: white;
margin-left: 3px;
line-height: 184px;
}

.checkbox_div {
display: inline-block;
position: absolute;
top: 0px;
right: 0px;
width: 602px;
text-align: center;
height: 192px;
background-color: white;
overflow: auto;
}

.checkbox_div>div:nth-child(n) {
display: inline-block;
position: relative;
margin: auto;
width: 180px;
height: 22px;
float: left;
text-align: left;
margin-top: 14px;
margin-left: 60px
}

.checkbox_div>div:nth-child(2n) {
display: inline-block;
position: relative;
margin: auto;
width: 300px;
height: 22px;
float: left;
text-align: left;
margin-top: 14px;
margin-left: 30px;
}

.report_content textarea {
border-style: none;
}

.report_content textarea:focus {
outline: none;
}

#cttCnt {
display: inline-block;
width: 100px;
    height: 50px;
    position: absolute;
    bottom: 87px;
    left: 46px;
}

.r_content_div {
display: block;
position: absolute;
height: 158px;
width: 758px;
border: 1px solid #cccccc;
text-align: left;
bottom: 228px;
line-height: 48px;
}

.r_content-1 {
display: inline-block;
position: absolute;
top: 0px;
width: 190px;
text-align: center;
height: 100%;
background-color: white;
margin-left: 3px;
line-height: 156px;
}

.report_content {
display: inline-block;
position: absolute;
top: 0px;
right: 0px;
width: 570px;
text-align: center;
height: 100%;
background-color: white;
overflow: auto;
border: 1px solid #cccccc;
}

.btm-ctt {
display: block;
position: absolute;
height: 200px;
width: 800px;
text-align: left;
bottom: 28px;
}

.btm-ctt1{
display: block;
position: absolute;
width: 800px;
text-align: left;
margin-top: 20px;
margin-left: 10px;
bottom: 60px;
}

.btm-ctt2{
position: absolute;
text-align: center;
bottom: 0px;
margin-left: 330px;
}

.btm-ctt3{
display: inline-block;
}

.btn_rot {
display: inline-block;
    background-color: #f7f7f7;
    color: black;
    width: 76px;
    height: 32px;
    padding-top: 10px;
    text-align: center;
    cursor: pointer;
    bottom: -8px;
    border-radius: 6px;
}

.btn_rot:hover {
color: #fff;
background-color: #EF6C33;
}

.btn_cancel {
display: inline-block;
    background-color: #f7f7f7;
    color: black;
    width: 76px;
    height: 32px;
    padding-top: 10px;
    text-align: center;
    cursor: pointer;
    bottom: -8px;
    border-radius: 6px;
}

.btn_cancel:hover {
color: #fff;
background-color: #EF6C33;
}
</style>
<script type="text/javascript"
src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

$("#btnDeclation2").on("click", function(){
reportPopup();
});

function reportPopup(){
var html = "";
                                                                                                                                   
html +="<div class=\"background_r\"></div>";
html +=" <div class=\"ctts_r\">";
html += " <form id=\"reportForm\">";
/*  html += " <input type=\"hidden\" name=\"\" value=\"" +  + "\" />";
html += " <input type=\"hidden\" name=\"\" value=\"" +  + "\" />"; */
html += " <input type=\"hidden\" name=\"checkArr\"  id=\"checkArr\"/>";
html +=" <div class=\"top_ctt\">";
html +=" <div class=\"top_ctt1\">";
html +=" <div>????????????</div>";
html +=" </div>";
html +=" <div class=\"top_ctt2\">";
html +=" <b>???????????????.</b>";
html +=" </div>";
html +=" <div class=\"top_ctt3\">";
html +=" ?????? ????????? ???????????????.";
html +=" </div>";
html +=" <div class=\"top_ctt4\">";
html +=" <div class=\"top_ctt4-1\">????????????</div>";
html +=" <div class=\"checkbox_div\">";
html +=" <div>";
html +=" <input type=\"checkbox\" name=\"checkR\" id=\"c1\" value=\"1\" class=\"check_one\"/>";
html +=" <label for=\"c1\">??????,????????????</label>";
html +=" </div>";
html +=" <div>";
html +=" <input type=\"checkbox\" name=\"checkR\" id=\"c2\" value=\"2\" class=\"check_one\"/>";
html +=" <label for=\"c2\">???????????? ??????</label>";
html +=" </div>";
html +=" <div>";
html +=" <input type=\"checkbox\" name=\"checkR\" id=\"c3\" value=\"3\" class=\"check_one\"/>";
html +=" <label for=\"c3\">????????????</label>";
html +=" </div>";
html +=" <div>";
html +=" <input type=\"checkbox\" name=\"checkR\" id=\"c4\" value=\"4\" class=\"check_one\"/>";
html +=" <label for=\"c4\">?????? ?????? ?????????????????? ??????</label>";
html +=" </div>";
html +=" <div>";
html +=" <input type=\"checkbox\" name=\"checkR\" id=\"c5\" value=\"5\" class=\"check_one\"/>";
html +=" <label for=\"c5\">?????????????????????</label>";
html +=" </div>";
html +=" <div>";
html +=" <input type=\"checkbox\" name=\"checkR\" id=\"c6\" value=\"6\" class=\"check_one\"/>";
html +=" <label for=\"c6\">?????? ??????</label>";
html +=" </div>";
html +=" <div>";
html +=" <input type=\"checkbox\" name=\"checkR\" id=\"c7\" value=\"7\" class=\"check_one\"/>";
html +=" <label for=\"c7\">???????????? ????????????</label>";
html +=" </div>";
html +=" <div>";
html +=" <input type=\"checkbox\" name=\"checkR\" id=\"c8\" value=\"8\" class=\"check_one\"/>";
html +=" <label for=\"c8\">????????? ??? ????????????</label>";
html +=" </div>";
html +=" <div>";
html +=" <input type=\"checkbox\" name=\"checkR\" id=\"c9\" value=\"9\" class=\"check_one\"/>";
html +=" <label for=\"c9\">??????</label>";
html +=" </div>";
html +=" </div>";
html +=" </div>";
html +=" <div class=\"r_content_div\">";
html +=" <div class=\"r_content-1\">??????<br/><span id=\"cttCnt\"></span></div>";
html +=" <div class=\"report_content\">";
html +=" <textarea rows=\"16\" cols=\"78\" name=\"reportCtt\" id=\"reportCtt\"></textarea></div>";
html +=" </div>";
html +=" </div><!-- --------------------------------------------top-ctt -->";
html +=" <div class=\"btm-ctt\">";
html +=" <div class=\"btm-ctt1\">";
html +=" <ul>";
html +=" <li><span class=\"font-red\">????????????</span>??? ?????? ???????????? ?????? ????????? ?????? ??? ????????????.</li>";
html +=" <li>??????????????? ????????? ?????? ???????????? ???????????? ????????? ?????? ?????? ??? ????????????.</li>";
html +=" <li>??? ?????? ??????????????? ???????????? ????????? ?????? ??? ??? <span class=\"font-red\">??????</span>????????? ????????????.<br/>";
html +=" <li>???????????? ??? ????????? ????????? ???????????? ???????????? ?????? ????????? ????????? ?????????.</li>";
html +=" ??????????????? ??? ??????????????? <span class=\"font-red\">??????</span>??? ??? ??? ?????????, <span class=\"font-red\">3???</span> ???????????? ???";
html +=" <span class=\"font-red\">?????????</span>?????? ????????? ???????????????.</li>";
html +=" </ul>";
html +=" </div>";
html +=" <div class=\"btm-ctt2\">";
html +=" <div class=\"btm-ctt3\">";
html +=" <div class=\"btn_rot\">??????</div>";
html +=" <div class=\"btn_cancel\">??????</div>";
html +=" </div>";
html +=" </div>";
html +=" </div>";
html += " </form>";
html +=" </div>";



$("body").prepend(html);

$(".background_r").hide();
$(".ctts_r").hide();
$(".background_r").fadeIn();
$(".ctts_r").fadeIn();

//??????
$(".btn_cancel").off("click");
$(".btn_cancel").on("click", function(){
closePopup();
});

$(".background_r").off("click");
$(".background_r").on("click", function(){
closePopup();
}); 



//???????????? textarea ????????? ??????
$("#reportCtt").on("keyup", function(){

$("#cttCnt").html("(" + $(this).val().length + "/ 500)");

if($(this).val().length > 500){
$(this).val($(this).val().substring(0,500));
$("#cttCnt").html("(500 / 500)");
}
});

//???????????? ??? ?????????
$(".btn_rot").on("click", function(){

$("#checkArr").val("");
$(".checkbox_div [type='checkbox']:checked").each(function(){
$("#checkArr").val($("#checkArr").val() + $(this).val());
});

console.log("#checkArr???: " + $("#checkArr").val());

});








//----------------------------------------------????????? ???
$("#btn_rot").off("click");
$("#btn_rot").on("click", function(){

//??????????????? ????????? ??? ????????? ?????? ??????




var params = $("#reportForm").serialize();

$.ajax({
type : "post",
url : "userReports",
dataType : "json",
data : params,
success : function(result) {

if(result.msg == "success"){
closePopup();

} else if(result.msg == "failed"){
alert("????????? ??????????????????.");
} else {
console.log(result);
alert("?????? ?????? ??? ????????? ??????????????????.");
}

},
error: function(request, status, error){
console.log(error);

}

});//ajax
});//???????????????????????????



};//popup end






//???????????? ?????? ??????
function closePopup() {
$(".background_r").fadeOut(function(){
$(".background_r").remove();
});

$(".ctts_r").fadeOut(function(){
$(".ctts_r").remove();
});
}






});//ready
</script>
</head>
<body>
<img src="resources/images/JY/share.png" id="btnShare2" alt="??????" width="20px" height="20px">
<img src="resources/images/JY/dot1.png" id="btnDot12" alt="??????" width="25px" height="25px">
<img src="resources/images/JY/dot2.png" id="btnDot22" alt="??????" width="25px" height="25px">
<img src="resources/images/JY/declation.png" id="btnDeclation2" alt="??????" width="20px" height="20px">

</body>
</html>