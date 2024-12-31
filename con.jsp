<% @ page import ="java.sql.*";%>
<%
try
{
   Class.forName("oracle.jdbc.driver.OracleDriver");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("Driver Loaded\n");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:	@ntsocietyserver:1521:oralbrce","scott","tiger");
	System.out.println("Connection established");
}
catch(Exception e)
{
    System.out.println(e);
}
%>