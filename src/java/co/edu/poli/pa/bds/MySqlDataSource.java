package co.edu.poli.pa.bds;


import com.mysql.cj.jdbc.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MySqlDataSource {
    private static MySqlDataSource miMySqlDS = null;
    private static MysqlDataSource ds = null;
    
    private MySqlDataSource(){
        try {
            ds = new MysqlDataSource();
            ds.setServerName("localhost");
            ds.setPortNumber(3306);
            ds.setUseSSL(false);
            ds.setDatabaseName("prueba1");
            ds.setUser("root");        
            ds.setPassword("rooot");
        } catch (SQLException ex) {
            Logger.getLogger(MySqlDataSource.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static Connection getConexionBD()
    {
        try {
            if (miMySqlDS == null)
            {
                miMySqlDS = new MySqlDataSource();            
            }
            
            return ds.getConnection();
            
        } catch (SQLException ex) {
            Logger.getLogger(MySqlDataSource.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }
    
    
    
    
    
}
