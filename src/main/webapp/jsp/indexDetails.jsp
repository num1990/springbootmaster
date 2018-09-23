<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>适当性评估</title>
    <content tag="additionalCss">
        <link href="${ctx}/css/vendor/bootstrap-datepicker3.min.css" rel="stylesheet">
        <link rel="stylesheet" href="${ctx}/css/jquery.fileupload.css">
    </content>
</head>
<body>

<div id="wrapper">
    <jsp:include page="left.jsp"/>
    <div class="container-fluid dashboard">
        <div id="page-wrapper">
            <div class="form">
        <div class="wizard-container">
            <div class="well" id="wizardProfile">
                <form id="matchupForm" role="form" class="form-horizontal match-input" accept-charset="UTF-8"
                      action="${ctx}${formActionUri}" method="POST"
                      modelAttribute="matchUpProductDTO">
                    <div class="wizard-header">
                        <h3 class="mll">
                            第一个菜单
                            <small> </small>

                        </h3>
                    </div>
                    <ul>
                    </ul>
                    <fieldset>


                        <div class="form-group required">
                            <label for="customerNumber" class="col-md-2 control-label">客户号</label>
                            <div class="col-md-3">
                                <input name="customerNumber" type="text"  class="form-control"   placeholder="客户号（目前自动生成）" value = "1000008">
                            </div>
                            <div class="col-md-3">
                                <input type="text" name="customerAbbrName" class="form-control"   placeholder="客户简称（必填）" value = "">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label for="customerNumber" class="col-md-2 control-label">客户号</label>
                            <div class="col-md-3">
                                <input name="customerNumber" type="text"  class="form-control"    placeholder="客户号（目前自动生成）" value = "1000008">
                            </div>
                            <div class="col-md-3">
                                <input type="text" name="customerAbbrName" class="form-control"   placeholder="客户简称（必填）" value = "">
                            </div>
                        </div>




                        <!-- 请上传期权产品匹配相关文件 -->
                        <div class="row">
                            <div id="expendableFundImage_0" class="form-group">
                                <div class="col-md-10 col-md-offset-2 col-sm-9 col-sm-offset-3">
                                                        <span class="btn btn-default btn-raised btn-sm">
                                                            <span>请上传材料...</span>
                                                            <i class="fa fa-cloud-upload"></i>
                                                            <input type="file" name="file" multiple="multiple">
                                                        </span>
                                    <span class="fileupload-process"></span>
                                </div>
                                <div role="presentation">
                                                        <span class="files">
                                                            <!-- 显示已经添加的图片 -->
                                                        </span>
                                </div>
                            </div>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div> <!-- wizard container -->
    </div><!-- /.form -->

        </div> <!-- /#page-wrapper -->
    </div> <!-- /#container-fluid -->
        </div>
<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <div class="row template-upload fade mbs mlx">
        <div class="col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-3">
            <span class="name">{%=file.name%}</span>
            <small class="error text-danger"></small>
        </div>
        <div class="col-md-2 col-sm-2">
            <span class="size">Processing...</span>
            <span class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"></span>
            <span class="progress-bar progress-bar-success" style="width:0%;"></span>
        </div>
        <div class="col-md-2 col-sm-3">
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary btn-raised btn-sm start" disabled>
                    <i class="fa fa-cloud-upload"></i>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning btn-raised btn-sm cancel">
                    <i class="fa fa-trash-o"></i>
                </button>
            {% } %}
        </div>
    </div>
{% } %}

</script>

<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <div class="row template-download fade mbs mlx">
        <div class="col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-3">
            <span class="name">
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </span>
            {% if (file.error) { %}
                <div><span class="error text-danger">Error: {%=file.error%}</span></div>
            {% } %}
        </div>
        <div class="col-md-2 col-sm-2">
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </div>
        <div class="col-md-2 col-sm-3">
            {% if (file.deleteUrl) { %}
                <button class="btn btn-danger btn-raised btn-sm delete" data-id="{%=file.imageId%}" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="fa fa-trash-o"></i>
                </button>
            {% } else { %}
                <button class="btn btn-warning btn-raised btn-sm cancel">
                    <i class="fa fa-ban"></i>
                </button>
            {% } %}
        </div>
    </div>
{% } %}

</script>

    <script src="${ctx}/webapp/js/unicenter.min.js"></script>

    <script src="${ctx}/webapp/js/indexDetails.min.js"></script>

</body>
</html>