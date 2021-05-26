/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.CategoryDAO;
import dao.GenderDAO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Gender;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author QuocBao
 */
@WebServlet(name = "UploadServlet", urlPatterns = {"/UploadServlet"})
public class UploadServlet extends HttpServlet {

 // location to store file uploaded
 private static final String UPLOAD_DIRECTORY = "upload";
 // upload settings
 private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
 private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
 private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
 @Override
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 }
 @Override
 protected void doPost(HttpServletRequest request,
 HttpServletResponse response)
 throws ServletException, IOException {
    
 try {
       String mess = null;
     // checks if the request actually contains upload file
     if (!ServletFileUpload.isMultipartContent(request)) {
         // if not, we stop here
         PrintWriter writer = response.getWriter();
         writer.println("Error: Form must has enctype=multipart/form-data.");
         writer.flush();
         return;
     }
     // configures upload settings
     DiskFileItemFactory factory = new DiskFileItemFactory();
     // sets memory threshold - beyond which files are stored in disk
     factory.setSizeThreshold(MEMORY_THRESHOLD);
     // sets temporary location to store files
     factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
     ServletFileUpload upload = new ServletFileUpload(factory);
     // sets maximum size of upload file
     upload.setFileSizeMax(MAX_FILE_SIZE);
     // sets maximum size of request (include file + form data)
     upload.setSizeMax(MAX_REQUEST_SIZE);
     // constructs the directory path to store upload file
     // this path is relative to application's directory
     String uploadPath = getServletContext().getRealPath("")
             + File.separator + UPLOAD_DIRECTORY;
     // creates the directory if it does not exist
     File uploadDir = new File(uploadPath);
     if (!uploadDir.exists()) {
         uploadDir.mkdir();
     }
    
     try {
         List<FileItem> formItems = upload.parseRequest(request);
         if (formItems != null && formItems.size() > 0) {
             // iterates over form's fields
             for (FileItem item : formItems) {
                 // processes only fields that are not form fields
                 if (!item.isFormField()) {
                     String fileName = new File(item.getName()).getName();
                     String filePath = uploadPath + File.separator + fileName;
                     File storeFile = new File(filePath);
                     // saves the file on disk
                     item.write(storeFile);
                     request.setAttribute("msg", UPLOAD_DIRECTORY + "/" + fileName);
                     request.setAttribute("message", UPLOAD_DIRECTORY + "/" + fileName);
                      mess ="upload/" + fileName;
                 }
             }
         }
         
     } catch (Exception ex) {
         request.setAttribute("message",
                 "There was an error: " + ex.getMessage());
     }
     // redirects client to message page
     
     
     
     CategoryDAO categoryDAO = new CategoryDAO();
     GenderDAO genderDAO = new GenderDAO();
     
     List<Category> listC = categoryDAO.getListCategory();
     List<Gender> listG = genderDAO.getListGender();
     
     
     //b2: set data to jsp
     System.out.println("day la anh:"+mess);
     request.setAttribute("listC", listC);
     request.setAttribute("listG", listG);
     request.setAttribute("mess" ,mess);
     getServletContext().getRequestDispatcher("/AddProduct.jsp").forward(
             request, response);
     
     
 } catch (SQLException ex) {
         Logger.getLogger(UploadServlet.class.getName()).log(Level.SEVERE, null, ex);
 }
 // redirects client to message page
 
 
 }
}

