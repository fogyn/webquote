package servlet;

import model.Lists;
import model.Quote;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/views/getAllQuoteByWord")
public class AllQuoteByWord extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String word = req.getParameter("idword");
        System.out.println(word);
        Lists ls = new Lists();

        List<Quote> list = new ArrayList<>();
        for (Quote q : ls.getQuoteList()) {
            if (q.getText().contains(word)) {
                list.add(q);
            }
        }

        if (list.size() > 0) {
            req.setAttribute("randomboolWord", "true");
            req.setAttribute("allQuotes", list);
        } else {
            req.setAttribute("allbool22", "true");
            req.setAttribute("all22", "Данных нет");
        }

        //}

        getServletContext().getRequestDispatcher("/views/select.jsp").forward(req, resp);
    }
}
