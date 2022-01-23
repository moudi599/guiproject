package Models;

import com.example.mainapp.Database;

import java.sql.*;

public class LoginModel {

    Database db;
    Connection con;

    private static int cid;

    public LoginModel() {
        try {
            db = Database.getInstance();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        con = db.connect();
    }

    public int getLogged() {
        return this.cid;
    }

    public void setLogged(int cid) {
        this.cid = cid;
    }

    public int validLogin(String uname, String password) {
        int errorcode = 0;
        cid = -1;
        String query = "exec spLogin ?, ?, ?, ?";
        CallableStatement cs = null;
        try {
            cs = con.prepareCall(query);
            cs.setString(1,uname);
            cs.setString(2,password);
            cs.registerOutParameter(3, Types.INTEGER);
            cs.registerOutParameter(4,Types.INTEGER);
            cs.execute();
            errorcode = cs.getInt(4);
            cid = cs.getInt(3);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return errorcode;
    }

    public void logout(int cid) {
        String query = "exec spLogout ?";
        System.out.println("test");
        CallableStatement cst = null;
        try {
            cst = con.prepareCall(query);
            cst.setInt(1,cid);
            cst.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
