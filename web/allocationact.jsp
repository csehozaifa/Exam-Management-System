<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>

<%
   Connection co = null;
     
        String username=request.getParameter("faculty");
        String password=request.getParameter("date");
        String date=request.getParameter("time");
        int i = 0;

        try
        {
	
	PreparedStatement pst2=connection.prepareStatement("insert into facultyupdate(faculty,date,time) values(?,?,?)");
	pst2.setString(1,faculty);
        pst2.setString(2,date);
        pst2.setString(3,time);
        pst2.setInt(4,i);
        
	pst2.executeUpdate();
                
       response.sendRedirect("addfaculty.jsp?msg=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
