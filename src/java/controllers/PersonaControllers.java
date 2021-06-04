
package controllers;
import co.edu.poli.pa.DAOs.PersonaDAO;
import co.edu.poli.pa.DTOs.Persona;
import co.edu.poli.pa.DTOs.Preguntas;
import co.edu.poli.pa.DTOs.Soporte;
import co.edu.poli.pa.bds.MySqlDataSource;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
 
@Controller
@RequestMapping("/")
public class PersonaControllers {
    
                //USER - PROCESS    
//----------------------INITIAL PROCCESS - CLIC ON CREATE
@RequestMapping(method = RequestMethod.GET, value = "userCreate.htm")
    public String processSubmit(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {
        System.out.println("userCreate");
        model.put("mensajePersona", "Pase por el controller de Persona:::"+req.getParameter("nombre1"));
        return "registro";
    }    
    
//-----------------------FIRST PROCESS - REGISTER
@RequestMapping(method = RequestMethod.POST, value = "userRegister.htm")
    public String processSubmit1(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {
        PersonaDAO pDao = new PersonaDAO();
        Logger.getLogger(PersonaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit1...");
        String ident = req.getParameter("identificacion");
        String nombre1 = req.getParameter("nombre1");
        String apellido1 = req.getParameter("apellido1");
        String telef = req.getParameter("telefono");
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        Persona p = new Persona();
        p.setIdentificacion(ident);
        p.setNombre1(nombre1);
        p.setApellido1(apellido1);
        p.setTelef(telef);
        p.setEmail(email);
        p.setPass(pass);
        boolean insert = pDao.crearPersona(p, MySqlDataSource.getConexionBD());
        Logger.getLogger(PersonaControllers.class.getName()).log(Level.SEVERE, null, "Registrar + " + ident + "-" + insert);
        
        if (insert)
            model.put("mensaje", "Su registro se ha creado con exito.");
        else
            model.put("mensaje", "El registro no pudo ser creado, intenta de nuevo.");

        return "registro";
    }     
    
//-----------------------SECOND PROCESS - TURN BACK /(BUTTON) -- CHANGE 
@RequestMapping(method = RequestMethod.GET, value = "return.htm")
    protected void processSubmit2(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");

        if(accion.equals("VOLVER")){
                    request.getRequestDispatcher("index.jsp").forward(request, response);
        }
            else{
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
    }
    
//------------------------THIRD PROCESS - VALIDATE
@RequestMapping(method = RequestMethod.POST, value = "userValidate.htm")
    public String processSubmit3(HttpServletRequest req, SessionStatus status,ModelMap model, HttpServletResponse response)
            throws ServletException, IOException 
    {
      PersonaDAO pDao = new PersonaDAO();       
        Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit3...");
        //int id = pDao.obtenerId(MySqlDataSource.getConexionBD());
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        Persona p = new Persona();
        //p.setId(id);
        p.setEmail(email);
        p.setPass(pass);
        String passAdmin = "123";
        String passUser = p.getPass();
            
        List<Persona> datos = pDao.validarPersona(p, MySqlDataSource.getConexionBD());

        Logger.getLogger(PersonaControllers.class.getName()).log(Level.SEVERE, null, "Consultar + " + email + "-" + datos.size());
        
        model.put("listaPersonas", datos);
        if(datos.size()>0 && passUser.equals(passAdmin))
                     req.getRequestDispatcher("admon.jsp").forward(req, response);
        else if (datos.size() > 0)
                    req.getRequestDispatcher("Home.jsp").forward(req, response);
        else
            model.put("mensaje", "Tus datos no son correctos, intenta de nuevo");
        
        return "index";
    }    

//------------------------FOURTH PROCESS - CONSULT - USER
@RequestMapping(method = RequestMethod.POST, value = "userQuery.htm")
    public String processSubmit4(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {
        PersonaDAO pDao = new PersonaDAO();
        Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit4...");
        String ident = req.getParameter("identificacion");
        String nombre1 = req.getParameter("nombre1");
        Persona p = new Persona();
        p.setIdentificacion(ident);
        p.setNombre1(nombre1);
        List<Persona> datos = pDao.consultarPersona(p, MySqlDataSource.getConexionBD());
        Logger.getLogger(PersonaControllers.class.getName()).log(Level.SEVERE, null, "Consultar + " + ident + "-" + datos.size());
        model.put("listaPersonas", datos);
        return "perfil";
    }    
    
//------------------------FIFTH PROCESS - EDIT - USER
@RequestMapping(method = RequestMethod.POST, value = "editUser.htm")
    public String processSubmit5(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {
        PersonaDAO pDao = new PersonaDAO();     
        Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit5...");
        int id = Integer.parseInt(req.getParameter("id"));
        String ident = req.getParameter("identificacion");
        String nombre1 = req.getParameter("nombre1");
        String apellido1 = req.getParameter("apellido1");
        String telef = req.getParameter("telef");
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "id", id);
        Persona p = new Persona();
        p.setId(id);
        p.setIdentificacion(ident);
        p.setNombre1(nombre1);
        p.setApellido1(apellido1);
        p.setTelef(telef);
        p.setEmail(email);
        p.setPass(pass);
            
        boolean res = pDao.editarPersona(p, MySqlDataSource.getConexionBD());                         
        
        if (res)
            model.put("mensaje", "Se perfil ha sido modificado con exito.");
        else
            model.put("mensaje", "Ups, ha ocurrido un error, intente de nuevo.");
        
        return "perfil";
        
    }   
    
//------------------------SIXTH PROCESS - DELETE - USER
@RequestMapping(method = RequestMethod.POST, value = "deletUser.htm")
    public String processSubmit6(HttpServletRequest req, SessionStatus status,ModelMap model){
        PersonaDAO pDao = new PersonaDAO();     
        Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit6...");
        int id = Integer.parseInt(req.getParameter("id"));
        String ident = req.getParameter("identificacion");
        String nombre1 = req.getParameter("nombre1");
        String apellido1 = req.getParameter("apellido1");
        String telef = req.getParameter("telef");
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        Logger.getLogger(PersonaDAO.class.getName()).log(Level.INFO, "id", id);
        Persona p = new Persona();
        p.setId(id);
        p.setIdentificacion(ident);
        p.setNombre1(nombre1);
        p.setApellido1(apellido1);
        p.setTelef(telef);
        p.setEmail(email);
        p.setPass(pass);
            
        boolean res = pDao.eliminarPersona(p, MySqlDataSource.getConexionBD());                         
        
        if (res)
            model.put("mensaje2", "Su cuenta ha sido eliminada con exito, porfavor, cierre sesión");
        else
            model.put("mensaje2", "Ups, su cuenta no pudo ser eliminada, intente de nuevo");
        
        return "perfil";
    }
    
    
    
    
                        //TEST - PROCESS    
//------------------------SEVENTH PROCESS -INSERT QUESTION (MANAGER)
@RequestMapping(method = RequestMethod.POST, value = "questionManager.htm")
    public String processSubmit7(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {
        PersonaDAO pDao = new PersonaDAO();
        Logger.getLogger(PersonaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit7...");
        String pregunta = req.getParameter("pregunta");
        String opcA = req.getParameter("opcA");
        String opcB = req.getParameter("opcB");
        String opcC = req.getParameter("opcC");
        Preguntas p = new Preguntas();
        p.setPregunta(pregunta);
        p.setOpcA(opcA);
        p.setOpcB(opcB);
        p.setOpcC(opcC);
        boolean insert = pDao.crearPreguntas(p, MySqlDataSource.getConexionBD());

        Logger.getLogger(PersonaControllers.class.getName()).log(Level.SEVERE, null, "Ingresar + " + pregunta + "-" + insert);
        
        if (insert)
            model.put("mensaje", "La pregunta ha sido creada con exito.");
        
        else
            model.put("mensaje", "La pregunta no pudo ser insertada, intente de nuevo.");
        
        return "admontest";
    }

//------------------------EIGHTH PROCESS - INSERT ANSWERS(USER) 
@RequestMapping(method = RequestMethod.POST, value = "questionSave.htm")
    public String processSubmit8(HttpServletRequest req, SessionStatus status,ModelMap model, HttpServletResponse response) throws ServletException, IOException 
    {
        PersonaDAO pDao = new PersonaDAO();
        Preguntas p = new Preguntas();
        Logger.getLogger(PersonaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit8...");
        String ident = req.getParameter("identificacion");
        String opc1 = req.getParameter("Op1");
        String opc2 = req.getParameter("Op2");
        String opc3 = req.getParameter("Op3");
        String opc4 = req.getParameter("Op4");
        String opc5 = req.getParameter("Op5");
        String opc6 = req.getParameter("Op6");
        String opc7 = req.getParameter("Op7");
        String opc8 = req.getParameter("Op8");
        String opc9 = req.getParameter("Op9");
        String opc10 = req.getParameter("Op10");
        p.setIdentificacion(ident);
        p.setRes1(opc1);
        p.setRes2(opc2);
        p.setRes3(opc3);
        p.setRes4(opc4);
        p.setRes5(opc5);
        p.setRes6(opc6);
        p.setRes7(opc7);
        p.setRes8(opc8);
        p.setRes9(opc9);
        p.setRes10(opc10);        
        boolean insert = pDao.guardarRespuestas(p, MySqlDataSource.getConexionBD());
        Logger.getLogger(PersonaControllers.class.getName()).log(Level.SEVERE, null, "Ingresar + " + ident + "-" + insert);
        if (insert)
                req.getRequestDispatcher("regla1.jsp").forward(req, response);
        else
            model.put("mensaje", "Sus resultados no fueron creados, reintente hacer el test.");
        
        return "test";
    }
    
//------------------------WORKING....   / 
 
    
                        //SUPPORT - PROCESS    
    
//------------------------NINTH PROCESS - INSERT SUPPORT(USER) 
@RequestMapping(method = RequestMethod.POST, value = "insertSupport.htm")
    public String processSubmit9(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {
        PersonaDAO pDao = new PersonaDAO();
            
        Logger.getLogger(PersonaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit9...");

        //int id = pDao.obtenerId(MySqlDataSource.getConexionBD());
        String nombre = req.getParameter("nombre");
        String email = req.getParameter("email");
        String asunto = req.getParameter("asunto");
        String descripcion = req.getParameter("descripcion");

        Soporte sop = new Soporte();
        //p.setId(id);
        sop.setNombre(nombre);
        sop.setEmail(email);
        sop.setAsunto(asunto);
        sop.setDescripcion(descripcion);
            
        boolean insert = pDao.adjuntarSoporte(sop, MySqlDataSource.getConexionBD());

        Logger.getLogger(PersonaControllers.class.getName()).log(Level.SEVERE, null, "Ingresar + " + nombre + "-" + insert);
        
        if (insert)
            model.put("mensaje", "Su petición fue enviada con exito, recibirá respuesta en los proximos 3 días");
        
        else
            model.put("mensaje", "Su petición no fue enviada, intente de nuevo.");
        
        return "soporte";
    
    }
    
}

    