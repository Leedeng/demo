<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="登陆与注册.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="css/style.css">

</head>
<style>
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
ol,ul{list-style:none;margin:0;padding:0;}
blockquote,q{quotes:none;}
blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
table{border-collapse:collapse;border-spacing:0;}
/* start editing from here */
a{text-decoration:none;}
.txt-rt{text-align:right;}/* text align right */
.txt-lt{text-align:left;}/* text align left */
.txt-center{text-align:center;}/* text align center */
.float-rt{float:right;}/* float right */
.float-lt{float:left;}/* float left */
.clear{clear:both;}/* clear float */
.pos-relative{position:relative;}/* Position Relative */
.pos-absolute{position:absolute;}/* Position Absolute */
.vertical-base{	vertical-align:baseline;}/* vertical align baseline */
.vertical-top{	vertical-align:top;}/* vertical align top */
.underline{	padding-bottom:5px;	border-bottom: 1px solid #eee; margin:0 0 20px 0;}/* Add 5px bottom padding and a underline */
nav.vertical ul li{	display:block;}/* vertical menu */
nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
img{max-width:100%;}
/*end reset*/
/*--login start here--*/
body{
   background: url(../images/banner.jpg)repeat;

   font-family: 'Roboto', sans-serif;
   font-size: 100%;
}
#fps
{
    display:none;
    }
.login {
  width: 32%;
  margin: 0 auto;
}
.login h2 {
  font-size: 30px;
  font-weight: 700;
  color: #fff;
  text-align: center;
  margin: 0px 0px 50px 0px;
  font-family: 'Droid Serif', serif;
}
.login-top {
  background: #E1E1E1;
  border-radius: 25px 25px 0px 0px;
  -webkit-border-radius:  25px 25px 0px 0px;
  -moz-border-radius: 25px 25px 0px 0px;
  -o-border-radius: 25px 25px 0px 0px;
  padding: 40px 60px;
}
.login-top h1 {
  text-align: center;
  font-size: 27px;
  font-weight: 500;
  color: #F45B4B;
  margin: 0px 0px 20px 0px;
}
.login-top input[type="text"] {
	outline: none;
  font-size: 15px;
  font-weight: 500;
  color: #818181;
  padding: 15px 20px;
  background: #CACACA;
  border: 1px solid #ccc;
  border-radius:25px;
  -webkit-border-radius: 25px;
  -moz-border-radius: 25px;
  -o-border-radius: 25px;
  margin: 0px 0px 12px 0px;
  width: 88%;
  -webkit-appearance: none;
}
.login-top input[type="password"]{
	outline: none;
  font-size: 15px;
  font-weight: 500;
  color: #818181;
  padding: 15px 20px;
  background: #CACACA;
  border: 1px solid #ccc;
  border-radius:25px;
  -webkit-border-radius: 25px;
  -moz-border-radius: 25px;
  -o-border-radius: 25px;
  margin: 0px 0px 12px 0px;
  width: 88%;
  -webkit-appearance: none;
}
.forgot  a{
  font-size: 13px;
  font-weight: 500;
  color: #F45B4B;
  display: inline-block;
  border-right: 2px solid #F45B4B;
  padding: 0px 7px 0px 0px;
}
.forgot  a:hover{
  color: #818181;
}
#Button1
{
    position:relative;
    left:300px;
  background: #F45B4B;
  color: #FFF;
  font-size: 17px;
  font-weight: 400;
  padding: 8px 7px;
  width: 20%;
  display: inline-block;
  cursor: pointer;
  border-radius: 6px;
  -webkit-border-radius: 19px;
  -moz-border-radius: 6px;
  -o-border-radius: 6px;
  margin: 0px 7px 0px 3px;
  outline: none;
  border: none; 
    }
 #Button1:hover {
	background:#818181;
	transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
}
.forgot input[type="submit"] {
  background: #F45B4B;
  color: #FFF;
  font-size: 17px;
  font-weight: 400;
  padding: 8px 7px;
  width: 20%;
  display: inline-block;
  cursor: pointer;
  border-radius: 6px;
  -webkit-border-radius: 19px;
  -moz-border-radius: 6px;
  -o-border-radius: 6px;
  margin: 0px 7px 0px 3px;
  outline: none;
  border: none;
}
.forgot input[type="submit"]:hover {
	background:#818181;
	transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
}
.forgot {
  text-align: right;
}
.login-bottom {
  background: #E15748;
  padding: 30px 65px;
  border-radius: 0px 0px 25px 25px;
  -webkit-border-radius:  0px 0px 25px 25px;
  -moz-border-radius: 0px 0px 25px 25px;
  -o-border-radius: 0px 0px 25px 25px;
  text-align: right;
  border-top: 2px solid #AD4337;
}
.login-bottom h3 {
  font-size: 14px;
  font-weight: 500;
  color: #fff;
}
.login-bottom h3 a {
  font-size: 25px;
  font-weight: 500;
  color: #fff;
}
.login-bottom h3 a:hover {
	color:#696969;
	transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
}
.copyright {
  padding: 150px 0px 0px 0px;
  text-align: center;
}
.copyright p {
  font-size: 15px;
  font-weight: 400;
  color: #fff;
}
.copyright p a{
  font-size: 15px;
  font-weight: 400;
  color: #E15748;
}
.copyright p a:hover{
	color: #fff;
	 transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
}
/*--login end here--*/
/*--meadia quiries start here--*/
@media(max-width:1440px){
.login {
  width: 35%;
}
}
@media(max-width:1366px){
.login {
  width: 37%;
}
}
@media(max-width:1280px){
.login {
  width: 40%;
}
}
@media(max-width:1024px){
.login {
  width: 48%;
}
.copyright {
  padding: 100px 0px 0px 0px;
}
}
@media(max-width:768px){
.login {
  width: 65%;
}
.login-top h1 {
  font-size: 25px;
}
.login-bottom h3 a {
  font-size: 22px;
}
.copyright {
  padding: 250px 0px 0px 0px;
}
body {
  padding: 100px 0px 0px 0px;
}
.login h2 {
  font-size: 28px;
}
}
@media(max-width:640px){
.login-top h1 {
  font-size: 23px;
}
.forgot input[type="submit"] {
  font-size: 15px;
  width: 22%;
}
.login-top input[type="text"] {
  padding: 12px 20px;
}
.login-top input[type="password"] {
  padding: 12px 20px;
}
.login-bottom h3 a {
  font-size: 19px;
}
.login-bottom h3 {
  font-size: 13px;
}
.copyright {
  padding: 110px 0px 0px 0px;
}
body {
  padding: 110px 0px 0px 0px;
}
}
@media(max-width:480px){
.login {
  width: 80%;
}
.login-top h1 {
  font-size: 21px;
}
.login-top input[type="text"] {
  width: 85%;
}
.login-top {
  padding: 30px 40px;
}
.login-top input[type="password"] {
  width: 85%;
}
.login h2 {
  font-size: 25px;
}
}
@media(max-width:320px){
.login {
  width: 90%;
}
.login-top {
  padding: 20px 25px;
}
.login-top input[type="text"] {
  width: 81%;
  padding: 10px 20px;
  font-size: 13px;
  margin: 0px 0px 7px 0px;
}
.login-top input[type="password"] {
  width: 81%;
  padding: 10px 20px;
  font-size: 13px;
  margin: 0px 0px 7px 0px;
}
.forgot input[type="submit"] {
  font-size: 11px;
  width: 25%;
  padding: 6px 7px;
}
.forgot  a {
  font-size: 11px;
}
.login-bottom {
  padding: 20px 25px;
}
.login-bottom h3 {
  font-size: 11px;
}
.login-bottom h3 a {
  font-size: 17px;
}
body {
  padding: 50px 0px 0px 0px;
}
.copyright p {
  font-size: 13px;
}
.copyright p a{
  font-size: 13px;
}
.login h2 {
  font-size: 23px;
  margin:0px 0px 35px 0px;
}
.copyright {
  padding: 75px 0px 0px 0px;
}
}
</style>
<body style="position:relative">
   


<!-- particles.js container -->
<div id="particles-js" style="position:absolute;"></div>
 <div class="login"  style="position:absolute;left:450px;top:100px;">
	<h2>Weather Map service</h2>
	<div class="login-top">
		<h1>登陆</h1>
		<form id="form1" runat="server">
			
            <input  ID="User_ID" runat="server" type="text" value="User_Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User_Name';}"/>
			<input  ID="User_pwd" runat="server"  type="password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}" onclick="return User_pwd_onclick()">
             <asp:Button ID="Button1" runat="server" Text="登陆" onclick="ensure_Click" />
	    </form>
	    <div class="forgot">
	    	<a href="#">忘记密码?</a>
	    
          
	    </div>
	</div>
	<div class="login-bottom">
		<h3>新用户 &nbsp;<a href="注册.aspx">注册</a>&nbsp 这里</h3>
	</div>
</div>	
<!-- scripts -->
<script src="particles.js"></script>
<script src="js/app.js"></script>

<!-- stats.js -->
<script src="js/stats.js"></script>
<script>
    var count_particles, stats, update;
    stats = new Stats;
    stats.setMode(0);
    stats.domElement.style.position = 'absolute';
    stats.domElement.style.left = '0px';
    stats.domElement.style.top = '0px';
    document.body.appendChild(stats.domElement);
    count_particles = document.querySelector('.js-count-particles');
    update = function () {
        stats.begin();
        stats.end();
        if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
            count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
        }
        requestAnimationFrame(update);
    };
    requestAnimationFrame(update);
    function User_pwd_onclick() {

    }

</script>

   
</body>
</html>
