import java.util.Properties;

import javax.mail.*;
import javax.mail.event.*;
import javax.mail.internet.*;
import javax.mail.search.*;
import javax.mail.util.*;

public class Mail {

  String host="smtp.naver.com";//네이버 메일

  private final String username="hometrainingplanner";
  private final String password="(ZXasqw12)";


  public void send(String toAddress,String pw)
	{
		  //메세지 전송 세팅
		  Properties pp = new Properties();
		  pp.put("mail.smtp.host", host);
		  pp.put("mail.smtp.auth", "true");

		  Session session = Session.getDefaultInstance(pp, new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		    return new PasswordAuthentication(username, password);
		   }
		  });

		  
		  try {
		   MimeMessage message = new MimeMessage(session);
		   message.setFrom(new InternetAddress(username));
		   message.addRecipient(Message.RecipientType.TO, new InternetAddress(toAddress));
      
       message.setSubject("홈트레이닝 플래너 임시 비밀번호입니다.");
		   message.setText("당신의 비밀번호는 '"+pw+"'입니다.");
		   Transport.send(message);//메일 전송

		  } 
		  catch (MessagingException e) 
		  {
		      e.printStackTrace();
		  }
		  
	}


}