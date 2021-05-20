package servlet;

import model.Lists;
import model.Quote;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;


@WebServlet("/views/getRandomQuote")
public class RandomQuote extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Random rnd = new Random();

        Lists ls = new Lists();
        System.out.println(ls.getQuoteList().size());

        req.setAttribute("randombool", "true");
        Quote quote = ls.getQuoteList().get(rnd.nextInt(ls.getQuoteList().size()));
        System.out.println(quote.getAutor());
        System.out.println(quote.getCategory());
        System.out.println(quote.getText());
        req.setAttribute("randomQuote", quote);



        getServletContext().getRequestDispatcher("/views/select.jsp").forward(req, resp);
    }
}
