package com.cetpa;

import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ConnectionListener implements ServletContextListener
{
	public void contextInitialized(ServletContextEvent evt) 
	{
		ServletContext context=evt.getServletContext();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/jsp6","root","Ritik@705080");
			createTable(cn);
			PreparedStatement psusersave=cn.prepareStatement("insert into userinfo values(?,?,?,?,?)");
			context.setAttribute("usersave", psusersave);
			PreparedStatement psaccountsave=cn.prepareStatement("insert into accountinfo(userid,amount) values(?,?)");
			context.setAttribute("accountsave", psaccountsave);
			PreparedStatement psaccountnoselect=cn.prepareStatement("select accountno from accountinfo where userid=?");
			context.setAttribute("accountnoselect", psaccountnoselect);
			PreparedStatement psselectuser=cn.prepareStatement("select username,password,accountno from userinfo u join accountinfo a on u.userid=a.userid where  u.userid=?");
			context.setAttribute("selectuser", psselectuser);
			PreparedStatement psselectamount=cn.prepareStatement("select amount from accountinfo where accountno=?");
			context.setAttribute("selectamount", psselectamount);
			PreparedStatement psdepositmoney=cn.prepareStatement("update accountinfo set amount=amount+? where accountno=?");
			context.setAttribute("depositmoney", psdepositmoney);
			PreparedStatement pswithdrawmoney=cn.prepareStatement("update accountinfo set amount=amount-? where accountno=?");
			context.setAttribute("withdrawmoney", pswithdrawmoney);
			
			
			System.out.println("Connected...");
			
			
			
				
		}
		catch(Exception ex) 
		{
			System.out.println(ex);
		}
	}
	private void createTable(Connection cn)throws Exception 
	{
		Statement st=cn.createStatement();
		st.execute("create table if not exists userinfo(userid varchar(30),password varchar(30),username varchar(30),phone varchar(20),address varchar(50))");
		st.execute("create table if not exists accountinfo(accountno int primary key auto_increment,userid varchar(30),amount int)auto_increment=11111");
	}
}
