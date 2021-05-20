package servlet;

import model.Quote;
import model.Singlton;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/views/deleteQuoteid")
public class DeleteQuoteById extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Singlton singlton = Singlton.getInstance();
        int id = Integer.parseInt(req.getParameter("id"));
        if(id>singlton.getQuoteList().size() || id<0){
            req.setAttribute("delete", "Цитаты с таким номером нет");
        }
        else{
            List<Quote> list = singlton.getQuoteList();
            list.remove(id);
            singlton.setQuoteList(list);
            req.setAttribute("delete", "Удаление прошло успешно ");
        }



        getServletContext().getRequestDispatcher("/views/deleteQuote.jsp").forward(req, resp);


    }
}
