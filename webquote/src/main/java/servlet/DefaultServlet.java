package servlet;

import model.DefaultList;
import model.Lists;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/defaultDb")
public class DefaultServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Lists lists = new Lists();
        DefaultList defaultList = new DefaultList();
        defaultList.todoLists(lists);
        req.setAttribute("defaultbool", "true");
        req.setAttribute("defaultDb", "Спсики заполнены по default");

        getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);

    }

}
