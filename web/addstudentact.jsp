<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>

<%
   Connection co = null;
   String studentID=request.getParameter("studentID");
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        String courseName=request.getParameter("courseName");
        String rollNumber=request.getParameter("rollNumber");
        String emailID=request.getParameter("emailID");
        String semester=request.getParameter("semester");
//        String facultyname=request.getParameter("facultyname");

        try
        {
         String tableName = ""; // This variable will store the appropriate table name based on the courseName
        if ("B.Tech".equals(courseName)) {
            tableName = "table_btech";
        } else if ("M.Tech".equals(courseName)) {
            tableName = "table_mtech";
        } else if ("MCA".equals(courseName)) {
            tableName = "table_mca";
        }
	PreparedStatement pst2=connection.prepareStatement("insert into " + tableName + "(studentID, name, password, rollNumber, emailID, courseName, semester) values(?,?,?,?,?,?,?)");
        
	pst2.setString(1,studentID);
	pst2.setString(2,name);
        pst2.setString(3,password);
        pst2.setString(4,rollNumber);
        pst2.setString(5,emailID);
        pst2.setString(6,courseName);
        pst2.setString(7,semester);
//        pst2.setString(7,facultyname);
        
	pst2.executeUpdate();
                
       response.sendRedirect("addstudent.jsp?msg=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>

