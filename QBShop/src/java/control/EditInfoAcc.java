/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.UsersDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Users;

/**
 *
 * @author QuocBao
 */
@WebServlet(name = "EditInfoAcc", urlPatterns = {"/editInfoAcc"})
public class EditInfoAcc extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
       String name = request.getParameter("fullname");
       String number = request.getParameter("number");
       String pass = request.getParameter("pass");
       String newPass = request.getParameter("newpass");
       String email = request.getParameter("email");
        String rePass = request.getParameter("repass");
       UsersDAO dao = new UsersDAO();
       Users user = new Users();
       user = dao.getUserByID(email);
        System.out.println(email + "-" +pass + "- " + newPass +"- " + rePass +"- " +number);
       int sdt = Integer.parseInt(number);
        if(!newPass.equals(rePass)){   
            request.setAttribute("messger", "Mật khẩu xác nhận không trùng với mât khẩu mới!");
            request.getRequestDispatcher("InfoAcc").forward(request, response);
        }        
        else{
            if(!pass.equals(user.getUserPass())){
             request.setAttribute("messger", "Mật khẩu Cũ không chính xác!"); 
             request.getRequestDispatcher("InfoAcc").forward(request, response);
                }
                else{
                dao.editInfoAcc(email, sdt, name, newPass);
                request.setAttribute("messger", "Cập nhập thành công!"); 
                request.getRequestDispatcher("InfoAcc").forward(request, response);
                }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EditInfoAcc.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EditInfoAcc.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
