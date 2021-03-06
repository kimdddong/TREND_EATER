<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREND EATER</title>
<script src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<!-- UIkit CSS -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/uikit/uikit.min.css" />


<!-- UIkit JS -->
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/animate.css/animate.min.css" type="text/css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/glyphicons/glyphicons.css" type="text/css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/font-awesome/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/material-design-icons/material-design-icons.css" type="text/css" />

<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/bootstrap/dist/css/bootstrap.min.css" type="text/css" />
<!-- build:css ../assets/styles/app.min.css  -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/styles/app.css" type="text/css" />
<!-- endbuild -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/styles/font.css" type="text/css" />

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


<style>
body {
	text-align: left;
	background: #F3F5F7;
	font-family: noto sans;
}

.review-care{
  padding: 5px 0px 5px 5px;
    margin-bottom: 5px;
	list-style-type: none;
    font-size: 12px;
}
#review-form-header {
	margin-top: 30px;
	padding: 15px 15px;
	/*  ???????????? ?????? : ????????? 5px, ??????????????? 15px  */
	font-size: 30px;
	font-weight: 900;
}

#review-container {
	margin-top: 120px;
	background: white;
	padding: 40px 70px 70px 70px;
}

.review-title{
 	margin-top: 50px;
	font-size: 20px;
	font-weight: bold;
}


	/* ??????  */

#myform{
	text-align: center;
    display: inline-block; /* ?????? ?????? ??????????????? ?????? ????????? ????????? ?????????.*/
    border: 0; /* ????????? ????????? ?????? */
    direction: rtl; /* ????????? ?????? ?????? */
}
#myform input[type=radio]{
    display: none; /* ??????????????? ?????? */
}
#myform label{
    font-size: 2.2em; /* ????????? ?????? */
    color: transparent; /* ?????? ????????? ?????? ?????? */
    text-shadow: 0 0 0 #f0f0f0; /* ??? ????????? ?????? ?????? */
}
#myform label:hover{
    text-shadow: 0 0 0 rgb(255,99,132);; /* ????????? ?????? */
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgb(255,99,132);; /* ????????? ?????? ???????????? ???????????? */
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgb(255,99,132);; /* ????????? ?????? ?????? */
}

/* ???????????? */
.recommend {
    padding: 15px 10px;
}
.recommend input[type=radio]{
    display: none;
}
.recommend input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 90px;
    border: 1px solid #333;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.recommend input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.recommend input[type=radio]:checked+label{
    background-color: rgb(255,99,132);
    border: rgb(255,99,132);
    color: #fff;
}
/* ??????????????? */
.repurcharse {
    padding: 15px 10px;
}
.repurcharse input[type=radio]{
    display: none;
}
.repurcharse input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 90px;
    border: 1px solid #333;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.repurcharse input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.repurcharse input[type=radio]:checked+label{
    background-color: rgb(255,99,132);
    border: rgb(255,99,132);
    color: #fff;
}

#taste-comment{
font-size: 12px;
color: rgba(255,99,132,0.7);
}

.spicy-title{
	margin-right: 10px;
}
.taste-title{
	margin-right: 25px;
}

/* ?????????*/
.spicy {
    padding: 15px 10px;
}
.spicy input[type=radio]{
    display: none;
}
.spicy input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 24px;
    border: 1px solid #333;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.spicy input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.spicy input[type=radio]:checked+label{
    background-color: rgb(255,99,132);
    border: rgb(255,99,132);
    color: #fff;
}
/* ??? ???*/
.sweet {
    padding: 15px 10px;
}
.sweet input[type=radio]{
    display: none;
}
.sweet input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 24px;
    border: 1px solid #333;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.sweet input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.sweet input[type=radio]:checked+label{
    background-color: rgb(255,99,132);
    border: rgb(255,99,132);
    color: #fff;
}
/* ??? ??? */
.bitter {
    padding: 15px 10px;
}
.bitter input[type=radio]{
    display: none;
}
.bitter input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 24px;
    border: 1px solid #333;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.bitter input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.bitter input[type=radio]:checked+label{
    background-color: rgb(255,99,132);
    border: rgb(255,99,132);
    color: #fff;
}
/* ??? ??? */
.salty {
    padding: 15px 10px;
}
.salty input[type=radio]{
    display: none;
}
.salty input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 24px;
    border: 1px solid #333;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.salty input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.salty input[type=radio]:checked+label{
    background-color: rgb(255,99,132);
    border: rgb(255,99,132);
    color: #fff;
}
/* ??? ??? */
.sour {
    padding: 15px 10px;
}
.sour input[type=radio]{
    display: none;
}
.sour input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 24px;
    width: 24px;
    border: 1px solid #333;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.sour input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.sour input[type=radio]:checked+label{
    background-color: rgb(255,99,132);
    border: rgb(255,99,132);
    color: #fff;
}

.uk-textarea{
 resize: none;
}

#all-button{
text-align: right;
margin-top: 30px;
}

#cancel-button{
border-radius:10px

}
#write-button{
background: rgba(255,99,132, 0.8);
color: white;
border-radius:10px;
}

#att_zone {
  min-height: 150px;
  padding: 10px;
  border: 0.1px dotted;
}

#att_zone:empty:before {
  content: attr(data-placeholder);
  color: #999;
  font-size: .9em;
}

#btnAtt {
display:none;
}

#image-button{
background: rgba(255,99,132, 0.8);
color: white;
border-radius:10px 10px 0 0;
}
}

</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>	
	
	<div class="uk-container uk-container-small" id="review-container">
	
		
		<form action="rinsert.bo" method="post" enctype="Multipart/form-data">
    <fieldset class="uk-fieldset">
		<input type="hidden" name="productNo" value="${ productNo }">
        <legend class="uk-legend" id="review-form-header">?????? ??????</legend>
        <hr>
        <ul class="review-care">
        	<li>- ???????????? ????????? ?????? ??????????????? ???????????????.</li>
			<li>- ?????? ?????? ??? 200???????????? ?????? ?????? 2??? ????????? ???????????????.</li>
			<li>- ????????? ?????? ?????? ??? 10,000???????????? ???????????????.</li>
			<li>- ????????? ????????? ?????? ????????? ????????? ????????????, ?????? ???????????????????????? 2??? ????????? ?????? ???????????? ????????? ??? ????????????.
			<ul>
				<li>????????? ??????????????? ?????? ??? ????????? ?????? ??????, ????????? ????????? ??????</li>
				<li>???????????? ??? ??????, ???????????? ????????? ????????? ?????? (????????? ??????)</li>
				<li>?????? ?????? ????????? ?????? ?????? ????????? ??????, ???????????? ????????? ??????, ????????? ????????? ????????? ??????</li>
			</ul></li>
			<li>- ?????? ?????? ?????? ??? ????????? 2??? ??????, 1?????? ???????????? ?????? ??????, 3????????? ?????? ????????? ????????? ???????????????.</li>
        </ul>
        <hr>
		<input type="hidden" class="review" name="emailId" value="${ loginUser.email }">
<%-- 		<input type="hidden" class="review" name="reviewNo" value="${ rev.reviewNo }"> --%>
		<input type="hidden" class="review" name="nickName" value="${ loginUser.nickName }">
        <div class="review-title">????????? ???????????????</div>
		<div name="reviewRating" id="myform" method="post" action="./save" name="reviewRating">
        <input type="radio" name="reviewRating" value="5" id="rate1" ><label for="rate1">???</label>
        <input type="radio" name="reviewRating" value="4" id="rate2"><label for="rate2">???</label>
        <input type="radio" name="reviewRating" value="3" id="rate3"><label for="rate3">???</label>
        <input type="radio" name="reviewRating" value="2" id="rate4"><label for="rate4">???</label>
        <input type="radio" name="reviewRating" value="1" id="rate5"><label for="rate5">???</label>
		</div>
		
		<div class="review-title">?????? ??????</div>
		<div class="recommend" name="recommend">
     <input type="radio" id="recommend1" name="recommend" value="1"><label for="recommend1">?????? ??????</label>
     <input type="radio" id="recommend2" name="recommend" value="2"><label for="recommend2">??????</label>
     <input type="radio" id="recommend3" name="recommend" value="3"><label for="recommend3">??????</label>
     <input type="radio" id="recommend4" name="recommend" value="4"><label for="recommend4">??????</label>
     <input type="radio" id="recommend5" name="recommend" value="5"><label for="recommend5">?????? ??????</label>
		</div>
		<div class="review-title">????????? ??????</div>
		 <div class="repurcharse" name="repurcharse">
     <input type="radio" id="repurcharse1" name="repurcharse" value="1"><label for="repurcharse1">?????? ??????</label>
     <input type="radio" id="repurcharse2" name="repurcharse" value="2"><label for="repurcharse2">??????</label>
     <input type="radio" id="repurcharse3" name="repurcharse" value="3"><label for="repurcharse3">??????</label>
     <input type="radio" id="repurcharse4" name="repurcharse" value="4"><label for="repurcharse4">????????????</label>
     <input type="radio" id="repurcharse5" name="repurcharse" value="5"><label for="repurcharse5">??? ?????????</label>
		</div>
		<div class="review-title">???</div>
		<span id="taste-comment">?????? ????????? ????????? ??????????????????!</span>
            <div class="spicy" name="spicy">
            <span class="spicy-title">?????? ???</span>
            <input class="uk-radio" type="radio" name="spicy" id="spicy1" value="1"><label for="spicy1">1</label>
            <input class="uk-radio" type="radio" name="spicy" id="spicy2" value="2"><label for="spicy2">2</label>
            <input class="uk-radio" type="radio" name="spicy" id="spicy3" value="3"><label for="spicy3">3</label>
            <input class="uk-radio" type="radio" name="spicy" id="spicy4" value="4"><label for="spicy4">4</label>
            <input class="uk-radio" type="radio" name="spicy" id="spicy5" value="5"><label for="spicy5">5</label>
            </div>
            <div class="sweet" name="sweet">
            <span class="taste-title">??? ???</span>
            <input class="uk-radio" type="radio" name="sweet" id="sweet1" value="1"><label for="sweet1">1</label>
            <input class="uk-radio" type="radio" name="sweet" id="sweet2" value="2"><label for="sweet2">2</label>
            <input class="uk-radio" type="radio" name="sweet" id="sweet3" value="3"><label for="sweet3">3</label>
            <input class="uk-radio" type="radio" name="sweet" id="sweet4" value="4"><label for="sweet4">4</label>
            <input class="uk-radio" type="radio" name="sweet" id="sweet5" value="5"><label for="sweet5">5</label>
            </div>
            <div class="bitter" name="bitter">
            <span class="taste-title">??? ???</span>
            <input class="uk-radio" type="radio" name="bitter" id="bitter1" value="1"><label for="bitter1">1</label>
            <input class="uk-radio" type="radio" name="bitter" id="bitter2" value="2"><label for="bitter2">2</label>
            <input class="uk-radio" type="radio" name="bitter" id="bitter3" value="3"><label for="bitter3">3</label>
            <input class="uk-radio" type="radio" name="bitter" id="bitter4" value="4"><label for="bitter4">4</label>
            <input class="uk-radio" type="radio" name="bitter" id="bitter5" value="5"><label for="bitter5">5</label>
            </div>
            <div class="salty" name="salty">
            <span class="taste-title">??? ???</span>
            <input class="uk-radio" type="radio" name="salty" id="salty1" value="1"><label for="salty1">1</label>
            <input class="uk-radio" type="radio" name="salty" id="salty2" value="2"><label for="salty2">2</label>
            <input class="uk-radio" type="radio" name="salty" id="salty3" value="3"><label for="salty3">3</label>
            <input class="uk-radio" type="radio" name="salty" id="salty4" value="4"><label for="salty4">4</label>
            <input class="uk-radio" type="radio" name="salty" id="salty5" value="5"><label for="salty5">5</label>
            </div>
            <div class="sour" name="sour">
            <span class="taste-title">??? ???</span>
            <input class="uk-radio" type="radio" name="sour" id="sour1" value="1"><label for="sour1">1</label>
            <input class="uk-radio" type="radio" name="sour" id="sour2" value="2"><label for="sour2">2</label>
            <input class="uk-radio" type="radio" name="sour" id="sour3" value="3"><label for="sour3">3</label>
            <input class="uk-radio" type="radio" name="sour" id="sour4" value="4"><label for="sour4">4</label>
            <input class="uk-radio" type="radio" name="sour" id="sour5" value="5"><label for="sour5">5</label>
            </div>
        
        
		<div class="review-title">?????? ???</div>
        <div class="uk-margin">
            <textarea class="uk-textarea" rows="10" name="good" placeholder="?????? 20??? ?????? ??????????????????."></textarea>
        </div>
        <div class="review-title">????????? ???</div>
        <div class="uk-margin">
            <textarea class="uk-textarea" rows="10" name="bad" placeholder="?????? 20??? ?????? ??????????????????."></textarea>
        </div>
        
<!--         ?????? ????????? -->
        <div id='image_preview'>
		    <div class="review-title">?????? ??????</div>
		    <div id="taste-comment">1??? ????????? ????????? ???????????????!</div>
		    <br>	
		    <label class="uk-button uk-button-default uk-button-medium" id="image-button" for="btnAtt">?????? ??????</label>
		    <input type='file' id='btnAtt' multiple='multiple' accept='image/*' name="uploadFile" />
		    <div id='att_zone' data-placeholder='?????? ?????? ????????? ??????????????? ????????? ????????? ????????????.'></div>
	  </div>

		<div id="all-button">
		<button class="uk-button uk-button-default uk-button-medium" type="button" id="cancel-button" onclick="location.href = 'rlist.bo'">??????</button>
		<button class="uk-button uk-button-default uk-button-medium" id="write-button">??????</button>
		</div>


    </fieldset>
</form>

	</div>
	
	<script>
	( /* att_zone : ??????????????? ????????? ?????? id, btn : file tag id */
			  imageView = function imageView(att_zone, btn){

			    var attZone = document.getElementById(att_zone);
			    var btnAtt = document.getElementById(btn)
			    var sel_files = [];
			    
			    // ???????????? ?????? ????????? ????????? ?????? div ??????
			    var div_style = 'display:inline-block;position:relative;'
			                  + 'width:150px;height:120px;margin:5px;border:none;z-index:1';
			    // ???????????? ????????? ??????
			    var img_style = 'width:100%;height:100%;z-index:none';
			    // ??????????????? ???????????? ??????????????? ??????
			    var chk_style = 'width:20px;height:18px;position:absolute;font-size:18px;'
			   + 'right:0px;bottom:0px;z-index:999;background-color:rgba(0,0,0,0.4);color:white; border:none; padding-bottom:22px; cursor: pointer';
			  
			    btnAtt.onchange = function(e){
			      var files = e.target.files;
			      var fileArr = Array.prototype.slice.call(files)
			      for(f of fileArr){
			        imageLoader(f);
			      }
			    }  
			    
			  
			    // ??????????????? ???????????? ?????? ??????
			    attZone.addEventListener('dragenter', function(e){
			      e.preventDefault();
			      e.stopPropagation();
			    }, false)
			    
			    attZone.addEventListener('dragover', function(e){
			      e.preventDefault();
			      e.stopPropagation();
			      
			    }, false)
			  
			    attZone.addEventListener('drop', function(e){
			      var files = {};
			      e.preventDefault();
			      e.stopPropagation();
			      var dt = e.dataTransfer;
			      files = dt.files;
			      for(f of files){
			        imageLoader(f);
			      }
			      
			    }, false)
			    

			    
			    /*????????? ??????????????? ????????? ?????? ???????????? */
			    imageLoader = function(file){
			      sel_files.push(file);
			      var reader = new FileReader();
			      reader.onload = function(ee){
			        let img = document.createElement('img')
			        img.setAttribute('style', img_style)
			        img.src = ee.target.result;
			        attZone.appendChild(makeDiv(img, file));
			      }
			      
			      reader.readAsDataURL(file);
			    }
			    
			    /*????????? ????????? ?????? ?????? checkbox??? ?????? attZone??? ????????? div??? ????????? ?????? */
			    makeDiv = function(img, file){
			      var div = document.createElement('div')
			      div.setAttribute('style', div_style)
			      
			      var btn = document.createElement('input')
			      btn.setAttribute('type', 'button')
			      btn.setAttribute('value', 'x')
			      btn.setAttribute('delFile', file.name);
			      btn.setAttribute('style', chk_style);
			      btn.onclick = function(ev){
			        var ele = ev.srcElement;
			        var delFile = ele.getAttribute('delFile');
			        for(var i=0 ;i<sel_files.length; i++){
			          if(delFile== sel_files[i].name){
			            sel_files.splice(i, 1);      
			          }
			        }
			        
			        dt = new DataTransfer();
			        for(f in sel_files) {
			          var file = sel_files[f];
			          dt.items.add(file);
			        }
			        btnAtt.files = dt.files;
			        var p = ele.parentNode;
			        attZone.removeChild(p)
			      }
			      div.appendChild(img)
			      div.appendChild(btn)
			      return div
			    }
			  }
			)('att_zone', 'btnAtt')
	</script>
</body>
</html>