package com.orb.horby.sample;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/sample/file")
public class FileController {
    
    @RequestMapping(value = "/init")
    public String init() {
        
        return "fileMain";
    }
    
    @RequestMapping(value = "/commons-fileupload")
    public String commonsFileupload(HttpServletRequest request, HttpServletResponse response) {
        // 判断enctype属性是否为multipart/form-data  
        boolean isMultipart = ServletFileUpload.isMultipartContent(request); 
        
        return "fileMain";
    }
}
