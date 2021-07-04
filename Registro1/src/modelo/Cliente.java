package modelo;

import java.util.ArrayList;
import java.util.List;

public class Cliente {
    private int id;
    private String descripcion;

    /**
     *
     */
    public List<Cliente> libros = new ArrayList<>();

    public Cliente() {
    }

    public Cliente(int id, String descripcion) {
        this.id = id;
        this.descripcion = descripcion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public void agregarCliente(Cliente cliente){
        libros.add(cliente);
    }
    
    public boolean buscarClienteCodigo(Cliente l){
        boolean b = false;
        for(Cliente cliente : libros){
            b = cliente.equals(l);
        }
        return b;
    }
    
    public int mostrarCantClientes(){
        return libros.size();
    }
    
    public void mostrarLibros(){
        for(Cliente cliente: libros){
            System.out.println(cliente.toString());
        }
    }
    
    
}