package vn.iotstar.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.DatabaseMetaData;

public class DBConnectSQL {
	private final String serverName = "localhost";
	private final String dbName = "ltwebst4";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userID = "sa";
	private final String password = "123";
	
	public Connection getConnection() {
		Connection conn = null;
		
		try {
			String url = "jdbc:sqlserver://"+serverName+":"+portNumber+"\\"+ instance +";databaseName="+dbName;
			
			if(instance == null || instance.trim().isEmpty())
				
				url = "jdbc:sqlserver://"+serverName+":"+portNumber+";databaseName="+dbName;
			
			conn = DriverManager.getConnection(url, userID, password);
			
			if(conn != null) {
				DatabaseMetaData dm = (DatabaseMetaData) conn.getMetaData();
					System.out.println("Driver name:" + dm.getDriverName());
					System.out.println("Driver version: " + dm.getDriverVersion());
					System.out.println("Product name: " +dm.getDatabaseProductName());
					System.out.println("Product version :" + dm.getDatabaseProductVersion());
				
				return conn;
			}
		}catch (SQLException ex) {
			ex.printStackTrace();
		}finally {
			try {
				if(conn != null) conn.close();
			}catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
		return conn;
	}
	
	public static void main(String[] args) {
		DBConnectSQL dbConnectSQL = new DBConnectSQL();
		
		Connection conn = dbConnectSQL.getConnection();
		
		if (conn != null) {
			System.out.println("Kết nối thành công!");
		} else {
			System.out.println("Kết nối thất bại!");
		}
	}
}
