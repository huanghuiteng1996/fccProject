package mingrisoft;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class News {

	DBConnection DBConn = new DBConnection();
	Function Fun = new Function();

	public String ListNews(String toPage, String pageNum) {
		try {
			Connection Conn = DBConn.getConn();
			Statement stmt = Conn.createStatement();
			ResultSet rs = null;
			StringBuffer resultData = new StringBuffer();
			String sSql = "select * from News order by NewsID desc";
			rs = stmt.executeQuery(sSql);
			resultData = Fun.ListNews(resultData, rs, toPage, pageNum);
			rs.close();
			stmt.close();
			Conn.close();
			return resultData.toString();
		} catch (Exception e) {
			return "No";
		}
	}

	public String AddNews(String[] newsData) {
		try {
			Connection Conn = DBConn.getConn();
			Statement stmt = Conn.createStatement();
			ResultSet rs = null;
			String sSql = "select * from News order by NewsID desc";
			rs = stmt.executeQuery(sSql);
			String result = Fun.AddNews(Conn, stmt, rs, newsData);
			return result;
		} catch (Exception e) {
			return "添加失败";
		}
	}

	public boolean DelNews(String newsId) {
		try {
			Connection Conn = DBConn.getConn();
			Statement stmt = Conn.createStatement();
			int NewsID = Fun.StrToInt(newsId);
			return Fun.DelNews(Conn, stmt, NewsID);
		} catch (Exception e) {
			return false;
		}
	}

	public String EditNews(String[] newsData, String newsId) {
		try {
			Connection Conn = DBConn.getConn();
			Statement stmt = Conn.createStatement();
			return Fun.EditNews(Conn, stmt, newsData, newsId);
		} catch (Exception e) {
			return "数据库连接失败!";
		}
	}

}
