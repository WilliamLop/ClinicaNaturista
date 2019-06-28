/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import HibernateUtil.HibernateUtil;
import Modelo.Persona;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;

/**
 *
 * @author YIBER
 */
public class controllerPersona extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String action = request.getParameter("a");
        switch(action){
            case "create":
                create(request,response);
                break;    
            case"update":
                update(request,response);
                break;    
            case "delete":
                delete(request,response);
                break;    
            case "admin":
                admin(request,response);
                break;
        }
    }    
    private void create(HttpServletRequest request, HttpServletResponse response){        
        if(request.getMethod().equalsIgnoreCase("POST")){
            Session sesion=HibernateUtil.getSessionFactory().openSession();
            Persona per = new Persona();
            per.setDocumentid(request.getParameter("txtDocumentid"));
            per.setNombre(request.getParameter("txtNombre"));
            per.setApellido(request.getParameter("txtApellido"));            
            per.setTelefono(request.getParameter("txtTelefono"));
            Date Fn;
            try{
            Fn=new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("txtFechaNacimiento"));
             per.setFechaNacimiento(Fn);
            }catch (ParseException ex){
                
            }per.setGenero(request.getParameter("txtGenero"));
            per.setRh(request.getParameter("txtRh"));
            per.setFoto(request.getParameter("txtFoto"));
            per.setCorreo(request.getParameter("txtCorreo"));
            per.setPassword(getMD5(request.getParameter("txtPassword")));
            per.setRol(request.getParameter("txtRol"));
            sesion.beginTransaction();
            sesion.save(per);
            sesion.getTransaction().commit();
            sesion.close();
            admin(request,response);            
        }else{ 
            try{
                request.getRequestDispatcher("CrearPersona.jsp").include(request, response);        
            }catch(ServletException | IOException ex){
                System.out.println("Error en registrar:"+ex.getMessage());
            }
        }
        
    }
    private void update(HttpServletRequest request, HttpServletResponse response){        
        Session sesion=HibernateUtil.getSessionFactory().openSession();        
        int id =Integer.parseInt(request.getParameter("id"));        
        Persona per=(Persona) sesion.get(Persona.class,id);        
        if(request.getMethod().equalsIgnoreCase("POST")){        
            per.setDocumentid(request.getParameter("txtDocumentid"));
            per.setNombre(request.getParameter("txtNombre"));
            per.setApellido(request.getParameter("txtApellido"));            
            per.setTelefono(request.getParameter("txtTelefono"));
            Date Fn;
            try{
            Fn=new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("txtFechaNacimiento"));
             per.setFechaNacimiento(Fn);
            }catch (ParseException ex){
                
            }per.setGenero(request.getParameter("txtGenero"));
            per.setRh(request.getParameter("txtRh"));
            per.setFoto(request.getParameter("txtFoto"));
            per.setCorreo(request.getParameter("txtCorreo"));
            per.setPassword(getMD5(request.getParameter("txtPassword")));
            per.setRol(request.getParameter("txtRol"));
            sesion.beginTransaction();
            sesion.beginTransaction();
            sesion.saveOrUpdate(per);
            sesion.getTransaction().commit();
            sesion.close();
            admin(request,response);        
        }else{
            request.setAttribute("EditarPersona",per);        
            try{
                request.getRequestDispatcher("ActualizarPersona.jsp").forward(request, response);        
            }catch(ServletException | IOException ex){
                System.out.println("Error en registrar:"+ex.getMessage());
            }
        }        
    }     
    private void delete(HttpServletRequest request, HttpServletResponse response){
        Session sesion=HibernateUtil.getSessionFactory().openSession();        
        int id =Integer.parseInt(request.getParameter("id"));        
        controllerPersona per=(controllerPersona) sesion.get(controllerPersona.class,id);        
        sesion.beginTransaction();
        sesion.delete(per);
        sesion.getTransaction().commit();
        sesion.close();
        admin(request,response);        
    }    
    private void admin(HttpServletRequest request, HttpServletResponse response){
        Session sesion=HibernateUtil.getSessionFactory().openSession();
        ArrayList datos = (ArrayList) sesion.createQuery("FROM Persona").list();            
        ArrayList<controllerPersona> lista= new ArrayList();
        for(Object obj : datos){
            lista.add((controllerPersona) obj);
        }        
        request.setAttribute("Per",lista);
        try{
            request.getRequestDispatcher("ListarPersona.jsp").forward(request, response);            
        }catch(ServletException | IOException ex){
            System.out.println("Error en admin :"+ex.getMessage());
        }
        sesion.close();
     }
    public static String getMD5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1, messageDigest);
            String hashtext = number.toString(16);

            while (hashtext.length() < 32) {
            hashtext = "0" + hashtext;
            }
            return hashtext;
            }
        catch (NoSuchAlgorithmException e) {
        throw new RuntimeException(e);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
