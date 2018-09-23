navigator.browserInfo =
    (
        function() {
            var browser = '';
            var version = '';
            var path = document.getElementsByTagName("body")[0].getAttribute("contextPath");
            var ua = navigator.userAgent;
            var tem = [];
            var M = ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i);
            //IE will be identified as 'Trident' and a different version number. The name must be corrected to 'Internet Explorer' and the correct version identified.
            //ie correction
            if (/trident/i.test(M[1])) {
                tem = /\brv[ :]+(\d+.?\d*)/g.exec(ua) || [];
                version = tem[1];
                if(!((version.charAt(0) == '1' && version.charAt(1) >= '0') || (version.charAt(0) >= '9'))){
                    alert("您的浏览器版本过低，请升级IE浏览器(版本11及以上)或者安装最新的chrome或者firefox等浏览器!");
                    window.location.href =  path + "/browser";
                }
            }

            //firefox
            if (/firefox/i.test(M[1])) {
                tem = /\brv[ :]+(\d+.?\d*)/g.exec(ua) || [];
                version = tem[1];
                if(!((version.charAt(0) == '3' && version.charAt(1) >= '5') || version.charAt(0) >= '4')){
                    alert("您的浏览器版本过低，请升级firefox浏览器(版本56及以上)或者安装最新的chrome或者firefox等浏览器!");
                    window.location.href =  path + "/browser";
                }
            }
        }

    )();