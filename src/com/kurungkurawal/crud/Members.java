/*

Aplikasi CRUD dengan Java Swing
Silakan dimodifikasi dan dipergunakan sesuai dengan kebutuhan Anda.

ali LIM
konglie@kurungkurawal.com
http://www.kurungkurawal.com

 */
package com.kurungkurawal.crud;

import com.kurungkurawal.db.dbList;
import com.kurungkurawal.db.dbRow;
import com.kurungkurawal.tools.Utils;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author user
 */
public class Members {
    public static dbList loadData(dbRow filter){
        try {
            return Launcher.getDatabaseConnection().loadData(filter, "member", "nama");
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    
    public static dbRow getMember(String id){
        try {
            return Launcher.getDatabaseConnection().fetchByID(id, "member", "id");
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    
    public static dbList searchByName(String name){
        try {
            String sql = String.format(
                    "SELECT * FROM member WHERE LOWER(%s) LIKE '%%%s%%' ORDER BY %s ASC",
                    "nama",
                    Utils.escapeSQLVar(name).toLowerCase(),
                    "nama"
            );
            return Launcher.getDatabaseConnection().getList(sql);
        } catch(Exception e){
            e.printStackTrace();
            return new dbList();
        }
    }
    
    public static boolean delete(String id){
        try {
            String sql = String.format("DELETE FROM member WHERE id = '%s'", 
                    Utils.escapeSQLVar(id)
            );
            return Launcher.getDatabaseConnection().nonTransactQuery(sql) > 0;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
