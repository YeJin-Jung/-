import java.util.Random;

public class MakePW
{
  static String mkpw()
  {
    Random r=new Random();
    int num;
    String pw="";
    for(int i=0;i<6;i++)
    {
      num=r.nextInt(26)+97;
      pw=pw+(char)num;
    }
    return pw;
  }

}