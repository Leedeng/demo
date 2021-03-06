window.onload =function(){
	var oUser = document.getElementById('user');
	var oReg = document.getElementById('reg');
	var oLogin = document.getElementById('login');
	var oUserinfo = document.getElementById('userinfo');
	var oList = document.getElementById('list');
	var oUsername1 = document.getElementById('username1');
	var oVerifyUserNameMsg = document.getElementById('verifyUserNameMsg');
	var oShowmore = document.getElementById('showMore');
	var iPage = 1;
	//初始化处理
	updataUserStatus();
	function updataUserStatus(){
		var uid = getCookie('uid');
		var username = getCookie('username');
	if(uid){
		//如果是登录状态
		oUser.style.display = 'block';
		oUserinfo.innerHTML = username;
		oReg.style.display = 'none';
		oLogin.style.display = 'none';
	}else{
		oUser.style.display = 'none';
		oUserinfo.innerHTML = '';
		oReg.style.display = 'block';
		oLogin.style.display = 'block';
	}
	}
	//初始化留言列表
	//
	//get
	/*
	 guestbook/index.php
	 m:index
	 a:getList
	 page:获取的留言的页码，默认为1
	 n:每页显示的条数，默认为10
	 返回{
	 	code:返回的信息代码 0 = 没有错误，1 = 有错误
	 	message:返回的信息 具体返回信息
	 }	*/
	
	showlist();
	
	oUsername1.onblur = function(){
		ajax('get','guestbook/index.php','m=index&a=verifyUserName&username='+this.value,function(data){
			//alert(data);
			var d =JSON.parse(data);
			oVerifyUserNameMsg.innerHTML = d.message;
			if(d.code == 1){
				oVerifyUserNameMsg.style.color = 'red';
			}else{
				oVerifyUserNameMsg.style.color = 'green';
			}
		});
	};
	//验证用户名
	//get
	/*
	 guestbook/index.php
	 m:index
	 a:verifyUserName
	 username:要验证的用户名
	 返回{
	 	code:返回的信息代码 0 = 没有错误，1 = 有错误
	 	message:返回的信息 具体返回信息
	 }
	 */
	//验证用户名
	//get/post
	/*
	 guestbook/index.php
	 m:index
	 a:reg
	 username:注册的用户名
	 password：注册的密码
	 
	 返回{
	 	code:返回的信息代码 0 = 没有错误，1 = 有错误
	 	message:返回的信息 具体返回信息
	 }
	 */
	var oPassword1 = document.getElementById('password1');
	var oRegBtn = document.getElementById('btnReg');
	oRegBtn.onclick = function(){
		ajax('post','guestbook/index.php','m=index&a=reg&username='+encodeURI(oUsername1.value)+'&password='+oPassword1.value,function(data){
			var d = JSON.parse(data);
			alert(d.message);
		});
	};
	
	//用户登录
	//get/post
	/*
	 guestbook/index.php
	 m:index
	 a:login
	 username:登陆的用户名
	 password：登陆的密码
	 
	 返回{
	 	code:返回的信息代码 0 = 没有错误，1 = 有错误
	 	message:返回的信息 具体返回信息
	 }
	 */
	var oUsername2 = document.getElementById('username2');
	var oPassword2 = document.getElementById('password2');
	var oLoginBtn = document.getElementById('btnLogin');
	oLoginBtn.onclick = function() {
		
		ajax('post', 'guestbook/index.php', 'm=index&a=login&username='+encodeURI(oUsername2.value)+'&password=' + oPassword2.value, function(data) {
			var d = JSON.parse(data);
			alert(d.message);
			if(!d.code){
				//推出成功
				updataUserStatus();
			}
		
			
		});
		
	}
	//用户推出
	//get/post
	/*
	 guestbook/index.php
	 m:index
	 a:logout
	 username:登陆的用户名
	 password：登陆的密码
	 
	 返回{
	 	code:返回的信息代码 0 = 没有错误，1 = 有错误
	 	message:返回的信息 具体返回信息
	 }
	 */
		var oLogout = document.getElementById('logout');
		oLogout.onclick = function() {
		
		ajax('get', 'guestbook/index.php', 'm=index&a=logout', function(data) {
			
			var d = JSON.parse(data);
			alert(d.message);
			if(!d.code){
				//推出成功
				updataUserStatus();
			}
			
		});
		
		return false;
		
	}
		//留言
	//post
	/*
	 guestbook/index.php
	 m:index
	 a:logout
	content:留言内容
	 
	 返回{
	 	code:返回的信息代码 0 = 没有错误，1 = 有错误
	 	message:返回的信息 具体返回信息
	 }
	 */
	var oContent = document.getElementById('content');
	var oBtnPost = document.getElementById('btnPost');
	oBtnPost.onclick = function() {
		
		ajax('post', 'guestbook/index.php', 'm=index&a=send&content='+encodeURI(oContent.value), function(data) {
			var d = JSON.parse(data);
			alert(d.message);
			//添加当前留言到列表中
			//data返回留言的成功的详细信息
			//{cid:留言id content:留言内容 username:留言人名称uid:留言id dateline：留言的时间戳 support:当前这条留言的顶的数量 oppose:当前留言踩的数量}
			if(!d.code){
				createList(d.data,true);
			}
			
			
			
		});
		
	}
	oShowmore.onclick = function(){
		iPage++;
		showlist();
	}
	function showlist(){
	ajax('get','guestbook/index.php','m=index&a=getList&n=3&page='+iPage,function(data){
			//alert(data);
			var d =JSON.parse(data);
			if(d.data){
				var arr = d.data.list;
			if(arr){
				for(var i=0;i<arr.length;i++){
					createList(arr[i]);
				}
			}else{
				if(iPage == 1){
					oList.innerHTML = '现在还没有留言，快来抢沙发';
				}
				
				oShowmore.style.display = 'none';
			}
			}else{
				oShowmore.style.display = 'none';
			}
			
			
		
			
		});
}
	
}
function getCookie(key) {
	var arr1 = document.cookie.split('; ');
	for (var i=0; i<arr1.length; i++) {
		var arr2 = arr1[i].split('=');
		
		if (arr2[0]==key) {
			return arr2[1];
		}
	}
}
function createList(data,insert){
	var oList = document.getElementById('list');
	var oDl = document.createElement('dl');
	var oDt = document.createElement('dt');
	var oStrong = document.createElement('strong');
				
	oStrong.innerHTML = data.username;
	oDt.appendChild(oStrong);
				
	var oDd1 = document.createElement('dd');
	oDd1.innerHTML = data.content;
	var oDd2 = document.createElement('dd');
	oDd2.className = 't';
	var oA = document.createElement('a');
	oA.href = '';
	oA.innerHTML= '顶(<span>'+data.support+'</span>)';
	var oA2 = document.createElement('a');
	oA2.href = '';
	oA2.innerHTML= '踩(<span>'+data.oppose+'</span>)';
	oDd2.appendChild(oA);
	oDd2.appendChild(oA2);
	oDl.appendChild(oDt);
	oDl.appendChild(oDd1);
	oDl.appendChild(oDd2);
	if(insert&&oList.children[0]){
		oList.insertBefore(oDl,oList.children[0]);
	}else{
		oList.appendChild(oDl);
	}
	
	
}

