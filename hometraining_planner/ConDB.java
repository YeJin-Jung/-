import java.sql.*;
import java.util.ArrayList;

public class ConDB {

    private Connection con = null;
    private Statement stmt = null;
    private ResultSet result = null;

    private String url = "jdbc:mysql://localhost/hometrainingplanner?serverTimezone=Asia/Seoul";
    private String user = "";
    private String password = "";

    ConDB() 
    {
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            }

            catch (java.lang.ClassNotFoundException ed) {
                System.out.print("ClassNotFoundException: ");
                System.out.println("드라이버 로딩 오류: " + ed.getMessage());
                return;
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    public String SignUp(String email, String name, String pw)// 회원가입
    {
        try {
            setDB();
            String sql = "INSERT INTO user_info\n" + "VALUES(''" + email + "','" + name + "','" + pw + "')";
            stmt.executeUpdate(sql);
            // 해당 회원 운동 로그 테이블 생성
            sql = "CREATE TABLE `hometrainingplanner`.`" + email + "_train_log` (\n" + "`date` VARCHAR(45) NOT NULL,\n"
                    + "`log` VARCHAR(5000) NOT NULL,\n" + "PRIMARY KEY(`date`));";
            stmt.execute(sql);
            commit();
            return "Clear";
        } catch (SQLException e) {
            e.printStackTrace();
            rollback();
            return "Error";
        }
    }

    public String emailCheck(String email)// 이메일 중복검사
    {
        try {
            setDB();
            String sql = "SELECT email FROM user_info\n" + "WHERE email='" + email + "'";
            result = stmt.executeQuery(sql);
            if (result.getString("email") == null) {
                commit();
                return "E";
            } else {
                commit();
                return "N";
            }
        } catch (Exception e) {
            e.printStackTrace();
            rollback();
            return "Error";
        }
    }

    public String init_info(String email, String sex, String difficulty, String purpose)// 첫 로그인 시의 회원 정보 수정
    {
        try {
            setDB();
            String sql = "UPDATE user_info\n" + "SET sex='" + sex + "'\n" + "WHERE email='" + email + "'";
            stmt.executeUpdate(sql);
            sql = "UPDATE user_info\n" + "SET difficulty='" + difficulty + "'\n" + "WHERE email='" + email + "'";
            stmt.executeUpdate(sql);
            sql = "UPDATE user_info\n" + "SET purpose='" + purpose + "'\n" + "WHERE email='" + email + "'";
            stmt.executeUpdate(sql);
            commit();
            return "Clear";
        } catch (Exception e) {
            e.printStackTrace();
            rollback();

        }
        return "";
    }

    public String findPW(String email,String name)//비밀번호 찾기
    {
        try{
            setDB();
            String sql="SELECT email,name FROM user_info\n"
            +"WHERE email='"+email+"'AND name='"+name+"'";
            result=stmt.executeQuery(sql);
            if(result.getString(0)==null)
            {
                commit();
                return "E";
            }
            else
            {
                Mail mail=new Mail();
                String pw=MakePW.mkpw();
                mail.send(result.getString("email"),pw);
                sql="UPDATE user_info\n"
                +"SET pw=''"+Encrypting.encrypt(pw)+"'\n"
                +"WHERE email='"+email+"'";
                stmt.executeUpdate(sql);
                commit();
                return "Clear";
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            rollback();
            return "Error";
        }
    }

    public String login(String email,String pw)//로그인
    {
        try{
            setDB();
            String sql="SELECT email FROM user_info\n"
            +"WHERE email='"+email+"'";
            result=stmt.executeQuery(sql);
            if(result.getString("email")==null)
            {
                commit();
                return "email";
            }
            else
            {
                sql="SELECT pw FROM user_info\n"
                +"WHERE email='"+email+"'";
                result=stmt.executeQuery(sql);
                if(result.getString("pw").equals(Encrypting.encrypt(pw)))
                {
                    commit();
                    return "OK";
                }
                else
                {
                    commit();
                    return "pw";
                }
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            rollback();
            return "Error";
        }
    }

    public String firstCheck(String email)//첫 로그인인지 확인
    {
        try
        {
            setDB();
            String sql="SELECT first FROM user_info\n"
            +"WHERE email='"+email+"'";
            result=stmt.executeQuery(sql);
            if(result.getInt("first")==1)
            {
                commit();
                return "F";
            }
            else
            {
                commit();
                return "N";
            }

        }
        catch(Exception e)
        {
            e.printStackTrace();
            rollback();
            return "Error";
        }

    }

    public String modInfo(String email,String name,String pw,String sex,String difficulty,String purpose)//회원정보 수정
    {
        try
        {
            setDB();
            String sql="UPDATE user_info\n" + "SET name='" + name + "'\n" + "WHERE email='" + email + "'";
            stmt.executeUpdate(sql);
            sql = "UPDATE user_info\n" + "SET pw='" + Encrypting.encrypt(pw) + "'\n" + "WHERE email='" + email + "'";
            stmt.executeUpdate(sql);
            sql = "UPDATE user_info\n" + "SET sex='" + sex + "'\n" + "WHERE email='" + email + "'";
            stmt.executeUpdate(sql);
            sql = "UPDATE user_info\n" + "SET difficulty='" + difficulty + "'\n" + "WHERE email='" + email + "'";
            stmt.executeUpdate(sql);
            sql = "UPDATE user_info\n" + "SET purpose='" + purpose + "'\n" + "WHERE email='" + email + "'";
            stmt.executeUpdate(sql);
            commit();
            return "Clear";
        }
        catch(Exception e)
        {
            e.printStackTrace();
            rollback();
            return "Error";
        }
    }

    public String getTrain(String email)
    {
        try
        {
            setDB();
            
            

        }
        catch(Exception e)
        {
            e.printStackTrace();
            rollback();
            return "Error";
        }
    }

    

    public String checkLog(String email,String date)//오늘의 운동 체크
    {
        try{
            setDB();
            String sql="SELECT date FROM "+email+"_train_log\n"
            +"WHERE date='"+date+"'";
            result=stmt.executeQuery(sql);
            if(result.getString("date")==null)
            {
                commit();
                return "N";
            }
            else
            {
                String log=result.getString("log");
                commit();
                return log;
            }
        }
        catch(Exception e)
        {
            rollback();
            return "Error";
        }
    }

    public String saveLog(String email,String date,String log)//로그 저장
    {
        try{
            setDB();
            String sql="INSERT INTO "+email+"_train_log\n"
            +"VALUES('"+date+",',"+log+"')";
            stmt.executeUpdate(sql);
            commit();
            return "Clear";
        }
        catch(Exception e)
        {
            e.printStackTrace();
            rollback();
            return "Error";
        }
        
    }

    private void setDB()
    {
        try
        {
            con = DriverManager.getConnection(url, user, password);
            stmt = con.createStatement();

        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    private void commit()//DB에 commit 후 객체 닫기
    {
        try
        {
            stmt.execute("COMMIT;");
            if(!result.isClosed())result.close();
            if(!stmt.isClosed())stmt.close();
            if(!con.isClosed())con.close();

        }
        catch(SQLException e)
        {
            e.printStackTrace();

        }
      }

      private void rollback()//DB rollback 후 객체 닫기
    {
        try
        {
            stmt.execute("ROLLBACK;");
            if(!result.isClosed())result.close();
            if(!stmt.isClosed())stmt.close();
            if(!con.isClosed())con.close();

        }
        catch(SQLException e)
        {
            e.printStackTrace();

        }
    }
}