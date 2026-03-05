package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "ServiceServlet", urlPatterns = { "/services" })
public class ServiceServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String type = request.getParameter("type");
        String targetPage = "services.jsp"; // Default page shows everything

        if ("camera".equals(type)) {
            targetPage = "service-camera.jsp";
        } else if ("solar".equals(type)) {
            targetPage = "service-solar.jsp";
        } else if ("repair".equals(type)) {
            targetPage = "service-repair.jsp";
        }

        // Forward the request to the specific service page
        request.getRequestDispatcher(targetPage).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
