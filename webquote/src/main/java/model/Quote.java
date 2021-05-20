package model;

import java.io.Serializable;

public class Quote implements Serializable {

    private String autor;
    private int category;
    private String text;

    public Quote() {
    }

    public Quote(String autor, int category, String text) {
        this.autor = autor;
        this.category = category;
        this.text = text;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
