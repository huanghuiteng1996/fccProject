package mingrisoft;
import java.sql.Connection;
import java.sql.SQLException;
public class Login {
	DBConnection DBConn=new DBConnection();
	Function Fun=new Function();
                Public boolean LoginCheck(String user,String pwd){
                           try{
                                       Connection Conn=DBConn.getConn();
boolean OK=true;
OK=Fun.CheckLogin(Conn,user,pwd);
return OK;
}catch(SQLException e){
return false;
}
}

}
