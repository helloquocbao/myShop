<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Upload</title>
    </head>
    <body>
    <center>
        <form method="post" action="UploadServlet" enctype="multipart/form-data">
            Select file to upload:
            <input type="file" name="uploadFile" />
            <br/><br/>
            <input type="submit" value="Upload" />
        </form>
    </center>



    <center>
        <h2>URL image là: ${message}</h2>
        <img src="${msg}"/>
        <input type="text" value="${message}" name="uploadFile" />
        <a href="AddProduct.jsp"> next</a>
    </center>
</body>
</html>