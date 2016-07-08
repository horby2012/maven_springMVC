<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>file</title>
<script type="text/javascript" src="/resources/jquery/jquery-1.12.4.js"></script>
</head>
<body>
<form id="formFileUpload" action="/sample/file/init" method="post" enctype="multipart/form-data">
<h1>File 上传</h1>
<input type="file" id="file1" name="file1"/>
<button onclick="javascript:doSubmit('commons-fileupload')">提交（commons-fileupload）</button>
</form>

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