<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">-->

<link rel="stylesheet" href="/resources/bootstrap/bootstrap-3.3.5-dist/css/bootstrap.css">

<title>file</title>
<script type="text/javascript" src="/resources/jquery/jquery-1.12.4.js"></script>
</head>
<body>
<div class="container">
<form id="formFileUpload" action="/sample/file/init" method="post" enctype="multipart/form-data">
    <h1>File 上传</h1>
    <div class="form-group">
        <label for="exampleInputFile">File input</label>
        <input type="file" id="exampleInputFile" name="exampleInputFile"/>
    </div>
    <button class="btn btn-default" onclick="javascript:doSubmit('commons-fileupload')">提交（commons-fileupload）</button>
</form>
</div>

<script type="text/javascript">
function doSubmit(type) {
    if(type == "commons-fileupload") {
        $("#formFileUpload").attr("action" ,"/sample/file/commons-fileupload");
        $("#formFileUpload").submit();
    }
}

</script>
</body>
</html>
