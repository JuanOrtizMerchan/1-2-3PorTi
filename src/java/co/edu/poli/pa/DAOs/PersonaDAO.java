package co.edu.poli.pa.DAOs;

import co.edu.poli.pa.DTOs.Persona;
import co.edu.poli.pa.DTOs.Preguntas;
import co.edu.poli.pa.DTOs.Soporte;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

//DATA ACCESS OBJECT
public class PersonaDAO {
 
    
    public boolean crearPersona(Persona p, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando crearPersona...");
            
            pstmt = con.prepareStatement("INSERT INTO persona "
                    + " (identificacion, nombre1, apellido1,"
                    + "  telefono, email, pass) "
                    + " VALUES (?,?,?,?,?,?)");
            
            //pstmt.setInt(1,p.getId());
            pstmt.setString(1, p.getIdentificacion());
            pstmt.setString(2, p.getNombre1());
            pstmt.setString(3, p.getApellido1());
            pstmt.setString(4, p.getTelef());
            pstmt.setString(5, p.getEmail());
            pstmt.setString(6, p.getPass());
            
            pstmt.execute();
            
            con.close();
            
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return respuesta;

    }
     public ArrayList<Persona> validarPersona(Persona p, Connection con)
    {
       
        ArrayList<Persona> datos = new ArrayList();
        Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando validarPersona...");
        
        try {
             Statement s = con.createStatement();
              ResultSet rs = s.executeQuery  ("select id_persona, identificacion, nombre1,"
                      + " apellido1,"
                      + "telefono, email, pass"
                      + " from persona "
                      + " where "
                       + " email='" + p.getEmail()+"'"
                    + " AND pass='"+p.getPass()+"'");
            
              while(rs.next()){
                Persona per = new Persona();
                per.setId(rs.getInt(1));
                per.setIdentificacion(rs.getString(2));
                per.setNombre1(rs.getString(3));
                per.setApellido1(rs.getString(4));
                per.setTelef(rs.getString(5));
                per.setEmail(rs.getString(6));
                per.setPass(rs.getString(7));
                datos.add(per);
              }  
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando validarPersona fin..." + datos.size());      
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return datos;
    }    
    public ArrayList<Persona> consultarPersona(Persona p, Connection con)
    {
        
        ArrayList<Persona> datos = new ArrayList();
        
        Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando consultarPersona...");
        
        try {
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery ("select identificacion, nombre1, "
                    + " apellido1, telefono, email, "
                    + " pass, id_persona "
                    + " from persona "
                    + " where "
                    + " identificacion='" + p.getIdentificacion()+"'"
                    + " AND nombre1='"+p.getNombre1()+"'");
            
            while (rs.next())
            { 
                Persona per = new Persona();
                per.setIdentificacion(rs.getString(1));
                per.setNombre1(rs.getString(2));
                per.setApellido1(rs.getString(3));
                per.setTelef(rs.getString(4));
                per.setEmail(rs.getString(5));
                per.setPass(rs.getString(6));
                per.setId(rs.getInt(7));
                
                datos.add(per);           
            }      
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando consultarPersona fin..." + datos.size());      
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return datos;
    }
    
    
    public int obtenerId(Connection con)
    {
        int id = -1;
        try {
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery ("select max(id_persona)+1 from persona");
            
            while (rs.next())
            { 
                id = rs.getInt(1);
            }

            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return id;
    }
         
    public boolean editarPersona(Persona p, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando editarPersona...");
            
            pstmt = con.prepareStatement("UPDATE prueba1.persona "
                    + " SET "
                    + " identificacion=?"
                    + " , nombre1=?"
                    + " , apellido1=?"
                    + " , telefono=?"
                    + " , email=?"
                    + " , pass=?"
                    + " where id_persona=?");
            
            
            pstmt.setString(1, p.getIdentificacion());
            pstmt.setString(2, p.getNombre1());
            pstmt.setString(3, p.getApellido1());
            pstmt.setString(4, p.getTelef());
            pstmt.setString(5, p.getEmail());
            pstmt.setString(6, p.getPass());
            pstmt.setInt(7, p.getId());
            
            
            pstmt.executeUpdate();     
            con.close();     
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return respuesta;
    }
    
        public boolean eliminarPersona(Persona p, Connection con){
         PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando eliminarPersona...");
            
            pstmt = con.prepareStatement("DELETE FROM prueba1.persona where id_persona=?");
            pstmt.setInt(1, p.getId());
            pstmt.executeUpdate();     
            con.close();     
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return respuesta;
         
        }
    // PREGUNTAS - CRUD TEST + RESPUESTAS.
        public boolean crearPreguntas(Preguntas p, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando crearPreguntas...");
            
            pstmt = con.prepareStatement("INSERT INTO preguntas "
                    + " (pregunta, opcA, opcB,"
                    + "  opcC) "
                    + " VALUES (?,?,?,?)");
            //pstmt.setInt(1,p.getId());
            pstmt.setString(1, p.getPregunta());
            pstmt.setString(2, p.getOpcA());
            pstmt.setString(3, p.getOpcB());
            pstmt.setString(4, p.getOpcC());
            pstmt.execute();
            con.close();
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return respuesta;
    }
        
         public boolean guardarRespuestas(Preguntas p, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando guardarPreguntas...");
            
            pstmt = con.prepareStatement("INSERT INTO prueba1.respuestas (identificacion, res1,res2,res3,res4,res5,res6,res7,res8,res9,res10) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
            
            pstmt.setString(1, p.getIdentificacion());
            pstmt.setString(2, p.getRes1());
            pstmt.setString(3, p.getRes2());
            pstmt.setString(4, p.getRes3());
            pstmt.setString(5, p.getRes4());
            pstmt.setString(6, p.getRes5());
            pstmt.setString(7, p.getRes6());
            pstmt.setString(8, p.getRes7());
            pstmt.setString(9, p.getRes8());
            pstmt.setString(10, p.getRes9());
            pstmt.setString(11, p.getRes10());
            pstmt.execute();
            con.close();
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return respuesta;
    }
          public int resultadosTest(Preguntas p, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        ArrayList<Preguntas> resultados = new ArrayList();
        int total=0;
        int suma = 0;
        try {            
            
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando guardarPreguntas...");
           
           Statement s = con.createStatement();
           ResultSet rs = s.executeQuery ("select * from prueba1.respuestas)");
                    
            
         while (rs.next())
            { 
                Preguntas per = new Preguntas();
                 per.setRes1(rs.getString(1));
                 per.setRes2(rs.getString(2));
                 per.setRes3(rs.getString(3));
                 per.setRes4(rs.getString(4));
                 per.setRes5(rs.getString(5));
                 per.setRes6(rs.getString(6));
                 per.setRes7(rs.getString(7));
                 per.setRes8(rs.getString(8));
                 per.setRes9(rs.getString(9));
                 per.setRes10(rs.getString(10));
                 
                resultados.add(per); 
                
            }      
             for(int i=0; resultados.size()<i; i++){
                 suma+=resultados.indexOf(i);
              }
                
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando consultarPersona fin..." + resultados.size());      
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return suma;
    }
          
          public boolean adjuntarSoporte(Soporte sop, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando adjuntarSoporte...");
            
            pstmt = con.prepareStatement("INSERT INTO prueba1.soporte (nombre, email, asunto, descripcion) VALUES (?,?,?,?)");
            
            pstmt.setString(1, sop.getNombre());
            pstmt.setString(2, sop.getEmail());
            pstmt.setString(3, sop.getAsunto());
            pstmt.setString(4, sop.getDescripcion());
            pstmt.execute();
            con.close();
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return respuesta;
    }

}
