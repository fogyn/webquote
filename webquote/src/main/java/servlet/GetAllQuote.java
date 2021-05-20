package servlet;

import model.Lists;
import model.Singlton;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/views/getallQuotes")
public class GetAllQuote extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Lists ls = new Lists();
        System.out.println(ls.getQuoteList().size());

        req.setAttribute("allbool", "true");
        req.setAttribute("allQuotes", ls.getQuoteList());
        //req.setAttribute("allCategory", ls.getCategoryList());

        getServletContext().getRequestDispatcher("/views/select.jsp").forward(req, resp);
    }
}
