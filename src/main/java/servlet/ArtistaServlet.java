/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logic.Artista;
import logic.Estilo;

/**
 *
 * @author javier
 */
public class ArtistaServlet extends HttpServlet {
    
    public static ArrayList<Artista> lista = new ArrayList<>();


    
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
            throws ServletException, IOException {
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
        
        String metodo = request.getParameter("metodo");
        String id = request.getParameter("id");
        
        if(metodo.equalsIgnoreCase("show")){
            request.setAttribute("idArtista", id);
            RequestDispatcher rd = request.getRequestDispatcher("VistaCanciones.jsp");
            rd.forward(request, response);
        }else if(metodo.equalsIgnoreCase("edit")){
            Artista artista = this.lista.get(Integer.parseInt(id)-1);
            request.setAttribute("artista", artista);
            request.setAttribute("metodo",metodo);
            request.setAttribute("listaArtista", this.lista); 
            
            RequestDispatcher rd = request.getRequestDispatcher("VistaArtista.jsp");
            rd.forward(request, response);
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
        
        String nombre = request.getParameter("nombreArtista");
        String id = request.getParameter("idArtista");
        String estilo = request.getParameter("estilo");
        String btnAction = request.getParameter("btnAction");
        
        if(btnAction.equalsIgnoreCase("Actualizar")){
            for (Artista artista : lista) {
                if(artista.getId() == Integer.parseInt(id)){
                    artista.setNombre(nombre);
                    artista.setEstilo(Estilo.valueOf(estilo));
                }
            } 
        }else if(btnAction.equalsIgnoreCase("Guardar")){    
            //agrego id con el largo de la lista comenzando desde 1
            this.lista.add(new Artista(this.lista.size()+1,nombre, Estilo.valueOf(estilo)));
   
        }
        
        request.setAttribute("listaArtista", this.lista); 
            RequestDispatcher rd = request.getRequestDispatcher("VistaArtista.jsp");
            rd.forward(request, response);

        
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
