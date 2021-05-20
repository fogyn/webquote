package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Lists implements Serializable {

    private List<Quote> quoteList;
    private List<String> categoryList;

    public Lists() {

        Singlton singlton = Singlton.getInstance();
        quoteList = singlton.getQuoteList();
        categoryList = singlton.getCategoryList();

    }

    public List<Quote> getQuoteList() {
        return quoteList;
    }

    public void setQuoteList(List<Quote> quoteList) {
        this.quoteList = quoteList;
    }

    public List<String> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<String> categoryList) {
        this.categoryList = categoryList;
    }
}
