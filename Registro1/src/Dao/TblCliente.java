package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import modelo.Cliente;


public class TblCliente
{
    private Conexion conex;
    private Connection conn;
    private PreparedStatement mostrarCliente;
    private List<Cliente> Cliente = new ArrayList();
    
    public TblCliente(List<Cliente> lista)
    {
        
       this.Cliente = lista;
       conn = conex.obtenerConexion();
        try {
            mostrarCliente = conn.prepareStatement("Select * from Librero");
        } 
        catch (SQLException ex)
        {
            Logger.getLogger(TblCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        
        
        
        
        
    }
    
    
    
    public void listarRegistroC()
        {
        
           ResultSet rs = null;
           
           try
           {
           
               rs = mostrarCliente.executeQuery();
               Cliente = new ArrayList<Cliente>();
               while(rs.next())
               {
                   Cliente.add(new Cliente(rs.getInt("Codigo"),
                   rs.getString("descripcion")));
               
               
               }
              
           
           }catch(Exception ex)
           {
           
               JOptionPane.showMessageDialog(null, ex.getMessage());
           
           
           }
           
                   
        
        
        
        }
    
}
