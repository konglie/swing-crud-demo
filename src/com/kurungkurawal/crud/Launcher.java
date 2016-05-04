/*

Aplikasi CRUD dengan Java Swing
Silakan dimodifikasi dan dipergunakan sesuai dengan kebutuhan Anda.

ali LIM
konglie@kurungkurawal.com
http://www.kurungkurawal.com

 */
package com.kurungkurawal.crud;

import com.kurungkurawal.db.DB;
import com.kurungkurawal.tools.Utils;
import java.util.HashMap;
import java.util.Map;
import javax.swing.UIManager;

/**
 *
 * @author user
 */
public class Launcher {
    private static DB databaseConnection;
    public static DB getDatabaseConnection() {
        return databaseConnection;
    }
    
    private static MainFrame frame;
    public static MainFrame getFrame(){
        return frame;
    }
    
    public static void main(String[] args){
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch(Exception e){
            
        }
        
        // database connection information
        Map<String, String> dbInfo = new HashMap<String, String>();
        
        //dbInfo.put("dbHost", "localhost");
        //dbInfo.put("dbPort", "3306");
        //dbInfo.put("dbUser", "root");
        //dbInfo.put("dbPass", "");
        dbInfo.put("dbName", "cruddemo");
        
        databaseConnection = new DB(dbInfo);
        if(!databaseConnection.connectDB()){
            Utils.alert("Koneksi ke database gagal. Aplikasi tidak dapat berjalan.");
            return;
        }
        
        frame = new MainFrame();
        frame.setVisible(true);
        
        frame.setContent(new MemberList(), "Data Member");
    }
}
