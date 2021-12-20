package modelo;

public class Books {
    int idBook;
    String book;
    String autor;
    String idioma;
    String primeraPublicacion;
    String ventas;
    String ISBN;
    String recomendacion;

    public Books(int idBook, String book, String autor, String idioma, String primeraPublicacion, String ventas,
            String iSBN, String recomendacion) {
        this.idBook = idBook;
        this.book = book;
        this.autor = autor;
        this.idioma = idioma;
        this.primeraPublicacion = primeraPublicacion;
        this.ventas = ventas;
        ISBN = iSBN;
        this.recomendacion = recomendacion;
    }

    public int getIdBook() {
        return idBook;
    }
    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }
    public String getBook() {
        return book;
    }
    public void setBook(String book) {
        this.book = book;
    }
    public String getAutor() {
        return autor;
    }
    public void setAutor(String autor) {
        this.autor = autor;
    }
    public String getIdioma() {
        return idioma;
    }
    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }
    public String getPrimeraPublicacion() {
        return primeraPublicacion;
    }
    public void setPrimeraPublicacion(String primeraPublicacion) {
        this.primeraPublicacion = primeraPublicacion;
    }
    public String getVentas() {
        return ventas;
    }
    public void setVentas(String ventas) {
        this.ventas = ventas;
    }
    public String getISBN() {
        return ISBN;
    }
    public void setISBN(String iSBN) {
        ISBN = iSBN;
    }
    public String getRecomendacion() {
        return recomendacion;
    }
    public void setRecomendacion(String recomendacion) {
        this.recomendacion = recomendacion;
    }  
    
}
