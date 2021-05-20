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
import java.util.Random;


@WebServlet("/views/getRandomQuoteByIdCategory")
public class RandomQuoteBiCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idCategory = Integer.parseInt(req.getParameter("idCategory"));
        System.out.println(idCategory);
        Random random = new Random();
        Lists ls = new Lists();
        if(idCategory>ls.getCategoryList().size() || idCategory<0){

            req.setAttribute("allbool22", "true");
            req.setAttribute("all22", "Такой категории нет");
        }
        else{
            List<Quote> list = new ArrayList<>();
            for(Quote q : ls.getQuoteList()){
                if(q.getCategory()==idCategory){
                    list.add(q);
                }
            }
            Quote quote = list.get(random.nextInt(list.size()));

            req.setAttribute("randomboolIdCategory", "true");
            req.setAttribute("randomQuote", quote);
        }

        getServletContext().getRequestDispatcher("/views/select.jsp").forward(req, resp);
    }
}
