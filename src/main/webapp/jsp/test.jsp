<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>登录</title>
</head>
<body>

        <div class="box">
        <div class="login-box">
            <div class="login-title text-center">
                <h1><small>登录</small></h1>
            </div>
            <div class="login-content">
                <div class="form">
                    <form:form action="${ctx}/ws/internet/domestic/person/FuturesOpenAccount" method="POST" role="form" id="loginform">
                       <div class="form-group">
                           <div class="col-xs-12">
                               <div class="input-group">
                                   <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                   <input type="text" id="username" name="companyid" class="form-control" value="xxj">
                               </div>
                           </div>
                       </div>
                       <div class="form-group">
                           <div class="col-xs-12">
                               <div class="input-group">
                                   <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                   <input type="password" id="password" name="company_password" class="form-control" value="test123">
                               </div>
                           </div>
                       </div>

                        <div class="form-group">
                           <div class="col-md-3">
                               <input name="compclientid" type="text" class="form-control" id="compclientid"  placeholder="客户号（目前自动生成）" value = "201703060000">
                           </div>
                           <div class="col-md-3">
                               <input type="text" name="clientName" class="form-control" id="clientName" placeholder="客户姓名" value = "小强">
                           </div>
                           <div class="col-md-3">
                               <input name="gender" type="text" class="form-control" id="gender"  placeholder="性别" value = "1">
                           </div>
                         </div>

                         <div class="form-group">

                           <div class="col-md-3">
                               <input type="text" name="branch_code" class="form-control" id="branch_code" placeholder="营业部编号" value = "10000">
                           </div>
                           <div class="col-md-3">
                               <input name="idtype" type="text" class="form-control" id="idtype"  placeholder="证件类型" value = "1">
                           </div>
                           <div class="col-md-3">
                               <input name="id_transformed" type="text" class="form-control" id="id_transformed"  placeholder="证件号码" value = "412723199110208139">
                           </div>

                           <div class="col-md-3">
                               <input name="addr_country" type="text" class="form-control" id="addr_country"  placeholder="联系地址国家" value = "CHN">
                           </div>
                           <div class="col-md-3">
                               <input name="addr_province" type="text" class="form-control" id="addr_province"  placeholder="联系地址省/自治区/直辖市" value = "156310000">
                           </div>

                           <div class="col-md-3">
                               <input name="addr_city" type="text" class="form-control" id="addr_city"  placeholder="联系地址市/县/区" value = "156310115">
                           </div>

                            <div class="col-md-3">
                               <input name="addr_address" type="text" class="form-control" id="addr_address"  placeholder="联系地址中的地址" value = "张江">
                           </div>

                           <div class="col-md-3">
                               <input name="addr_zipcode" type="text" class="form-control" id="addr_zipcode"  placeholder="邮政编码" value = "200000">
                           </div>

                           <div class="col-md-3">
                               <input name="email" type="text" class="form-control" id="email"  placeholder="电子信箱" value = "949941704@qq.com">
                           </div>

                           <div class="col-md-3">
                               <input name="phone_countrycode" type="text" class="form-control" id="phone_countrycode"  placeholder="联系电话中的国家代码" value = "86">
                           </div>

                           <div class="col-md-3">
                               <input name="phone_areacode" type="text" class="form-control" id="phone_areacode"  placeholder="联系电话中的区号代码" value = "0">
                           </div>

                           <div class="col-md-3">
                               <input name="phone_number" type="text" class="form-control" id="phone_number"  placeholder="联系电话中的电话号码" value = "18336095610">
                           </div>

                           <div class="col-md-3">
                               <input name="workproperty" type="text" class="form-control" id="workproperty"  placeholder="单位性质" value = "CHN">
                           </div>

                         </div>

                        <div class="form-group form-actions">
                            <span class="warning">${errorMsg}</span>

                            <div class="col-xs-4 col-xs-offset-4">
                                <button type="submit" class="btn btn-sm btn-info"><span class="glyphicon glyphicon-off"></span> 登录</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6 link">
                                <p class="text-center remove-margin"><small>忘记密码？</small> <a href="${ctx}/operators/showRetrievePasswordPage" ><small>找回</small></a>
                                </p>
                            </div>

                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        </div>

<content tag="additionalJsAfterUnicenter">
   <script>
       function display(data) {
           var json = "<h4>Ajax Response</h4><pre>"
               + JSON.stringify(data, null, 4) + "</pre>";
           $('.warning').html(json);
       }

       jQuery(document).ready(function () {
               $('#loginform').submit(function (event) {
                   event.preventDefault();
                   console.log("11----------------------");
                   var data = new Object();
                   data.companyid = $('#username').val();
                   data.company_password = $('#password').val();
                   data.compclientid = $('#compclientid').val();
                   data.clientname = $('#clientName').val();
                   data.gender = $('#gender').val();
                   data.branch_code = $('#branch_code').val();
                   data.idtype = $('#idtype').val();
                   data.id_transformed = $('#id_transformed').val();
                   data.addr_country = $('#addr_country').val();
                   data.addr_province = $('#addr_province').val();
                   data.addr_city = $('#addr_city').val();
                   data.addr_address = $('#addr_address').val();
                   data.addr_zipcode = $('#addr_zipcode').val();
                   data.email = $('#email').val();
                   data.phone_countrycode = $('#phone_countrycode').val();
                   data.phone_areacode = $('#phone_areacode').val();
                   data.phone_number = $('#phone_number').val();
                   data.workproperty = $('#workproperty').val();

                   data.degree_code = 1;
                   data.clientmode = 0;

                   data.terminal_type=1;
                   data.develop_source="internet test";

                   var bank_acct = new Object();
                    bank_acct.accountname = $('#clientName').val();
                    bank_acct.bankid = "01";
                    bank_acct.accountno = "6320202093012301239120";
                    bank_acct.branchname = "张江支行";
                    bank_acct.currency = "CNY";

                    data.bank_account_data = [bank_acct]

                    //银行


                   //期货交易编码
                   var future_acct = new Object();
                   future_acct.futures_open_flag = '1';
                   future_acct.exchangeid = 'S';
                   data.futures_account_data= [future_acct];

                   //money data
                   var money = new Object();
                   money.currency = "CNY";
                   data.money_data = [money];





                   $.ajax({
                       type : "POST",
                       contentType : "application/json",
                       url : "/ws/internet/domestic/person/FuturesOpenAccount",
                       data : JSON.stringify(data),
//                       data : data,
                       dataType : 'json',
                       timeout : 100000,
                       success : function(data) {
                           console.log("SUCCESS: ", data);
                           display(data);
                       },
                       error : function(e) {
                           console.log("ERROR: ", e);
                           display(e);
                       },
                       done : function(e) {
                           console.log("DONE");
                       }
                   });
               })
           }
       );
   </script>
</content>

</body>
</html>