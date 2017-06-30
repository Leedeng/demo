
function doMove ( obj, attr, dir, target, endFn ) {
	
	dir = parseInt(getStyle( obj, attr )) < target ? dir : -dir;
	
	clearInterval( obj.timer );
	
	obj.timer = setInterval(function () {
		
		var speed = parseInt(getStyle( obj, attr )) + dir;			// 步长
		
		if ( speed > target && dir > 0 ||  speed < target && dir < 0  ) {
			speed = target;
		}
		
		obj.style[attr] = speed + 'px';
		
		if ( speed == target ) {
			clearInterval( obj.timer );
			
			/*
			if ( endFn ) {
				endFn();
			}
			*/
			endFn && endFn();
			
		}
		
	}, 30);
}

function getStyle ( obj, attr ) { return obj.currentStyle?obj.currentStyle[attr]:getComputedStyle(obj)[attr]; }

function shake(obj,attr,position,endFn){
	
		var pos = parseInt(getStyle(obj,attr));
		var timer = null;
		var num = 0;
		var arr1 = [position];
		var arr = [];
		arr1.push(pos);
		pos = arr1[0];
		
		
		for(var i=20;i>0;i-=2){
			arr.push(i,-i);	
		}
		arr.push(0);
		clearInterval(obj.shakeTimer);
		obj.shakeTimer = setInterval(function(){
			obj.style[attr] = pos+arr[num]+'px'
			num++;
			if(num === arr.length){
				clearInterval(obj.shakeTimer);
				endFn&&endFn();
			}	
				
		},50);
		
	}
	
	function opacity_change(obj,num,endFn){
		clearInterval(timer);
		var timer = null;
		var opc = parseInt(getStyle(obj,'opacity'));
		
		timer=setInterval(function(){
			
		obj.style.opacity = opc;
		if(num == 1){
			opc+=0.1
			if(opc>1){
			clearInterval(timer);
			endFn&&endFn();
		}
		}
		if(num == 0){
			opc-=0.1
			if(opc<0){
			clearInterval(timer);
			endFn&&endFn();
		}
		}
		
		},100);
			
	}
	
	 function shakebad( obj, attr, endFn ) {

        // if( !obj.shaked ) { return; }
        var pos = parseInt( getStyle(obj, attr) );			// 有隐患的

        var arr = [];			// 20, -20, 18, -18 ..... 0
        var num = 0;
        var timer = null;

        for ( var i=10; i>0; i-=2 ) {
            arr.push( i, -i );
        }
        arr.push(0);

        // obj.shaked = false;
        clearInterval( obj.shake );
        obj.shake = setInterval(function (){
            obj.style[attr] = pos + arr[num] + 'px';
            num++;
            if ( num === arr.length ) {
                clearInterval( obj.shake );
                // obj.shaked = true;
                endFn && endFn();

            }
        }, 50);
    }
