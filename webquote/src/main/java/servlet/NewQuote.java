package servlet;

import model.Lists;
import model.Quote;
import model.Singlton;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/views/newquote")
public class NewQuote extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Singlton singlton = Singlton.getInstance();
        req.setCharacterEncoding("UTF-8");
        Lists lists = new Lists();
        Quote quote = new Quote();
        String autor = req.getParameter("autor");
        String category = req.getParameter("category");
        String text = req.getParameter("text");

        quote.setAutor(autor);
        quote.setText(text);

        boolean test = false;
        List<Quote> quoteList = singlton.getQuoteList();
        List<String> list = singlton.getCategoryList();
        for(int i=0; i<list.size();i++){
            if(category.equals(list.get(i))){
                test=true;
                quote.setCategory(i);
                System.out.println(i);
                break;
            }
        }

        if(!test){
            list.add(category);
            quote.setCategory(list.size()-1);
            singlton.setCategoryList(list);

            System.out.println(quote.getCategory());
        }

        System.out.println(quote.getAutor());
        System.out.println(quote.getCategory());
        System.out.println(quote.getText());


        quoteList.add(quote);
        singlton.setQuoteList(quoteList);

        System.out.println(text);

        req.setAttribute("newquote", "Новая запись добавлена");

        getServletContext().getRequestDispatcher("/views/newQuote.jsp").forward(req, resp);
    }
}
