function ajax(method,url,data,success){
		var xhr = null;
//				if(window.XMLHttpRequest){
//					 xhr = new XMLHttpRequest();
//				}else{
//					xhr = new ActiveXObject('Mircosoft.XMLHTTP');
//				}
				try{
					xhr = new XMLHttpRequest();
				}catch(e){
					xhr = new ActiveXObject('Mircosoft.XMLHTTP');
				}
				//在地址栏输入地址
				if(method == 'get'&&data){
					url+='?'+data;
				}
				xhr.open(method,url,true);
				//提交按下回车
				if(method == 'get'){
					xhr.send();	
				}else{
					xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
					xhr.send(data);
				}
				
				//等待服务器返回内容
				xhr.onreadystatechange = function(){
					if(xhr.readyState == 4){
						if(xhr.status == 200){
							success&&success(xhr.responseText);
						}else{
							
							alert('出错了,Err:'+xhr.status);
						}
						success();
					}
				};
}
