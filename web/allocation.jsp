<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Exam Management System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
		<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.tools.js"></script>	
		<script type="text/javascript" src="lib/jquery.custom.js"></script>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Faculty Added Successfully...!');</script>
    <%}%>


    <div id="main">
    <div id="header">
    <div id="logo">

    <br/><center><p><font color="white" size="5"> Exam Management System </font></p></center>
    </div>
    <div id="buttons">
    <a href="adminhome.jsp" class="but">Home</a>
    <a href="addfaculty.jsp" class="but" >Add Faculty</a>
    <a href="addstudent.jsp"  class="but">Add Student</a>
    <a href="addrooms.jsp"  class="but" >Add Rooms</a>
    <!--<a href="calculaterooms.jsp"  class="but" >Allocate Faculty</a>-->
    <a href="admin.jsp"  class="but" >Logout</a>
    </div>
    </div>

    <div id="content">

    <div class="scrollable">
    <div class="items">
    <div class="item">
    <div class="header1"></div>                                    
    </div> 
    <div class="item">
    <div class="header2"></div>						
    </div> 
    <div class="item">
    <div class="header3"></div>						
    </div> 	


    </div>
    </div> 
    <div class="navi"></div> 
    <div style="margin-top: -20px">

    <div id="content_left">
    <div class="news">
    <br/><br/>
    <center><p><font size="5" color="black">Add Faculty </font></p><br/></center>
     
    <form action="allocationact.jsp" method="post">
    <center><table align="center" width="281" border="0" >

            
            <label for="faculty">Choose Faculty:</label>
                <select id="faculty" name="faculty">
                    <option value="Khaleel">Dr. Khaleel Ahmad</option>
                    <option value="Khaleda">Mrs Khaleda Afroaz</option>
                    <option value="Afrah">Mrs Afrah Fathima</option>
                    <option value="Arundhati">Mrs. T Arundhati</option>
                    <option value="Talha">Mr. Ahmad Talha Siddiqui</option>
                    <option value="Omar">Mr. Mohd Omar</option>
                    <option value="Rafeeq">Mr. Mohd Rafeeq</option>
                    <option value="Muqeem">Dr. Muqeem Ahmed</option>
                    <option value="Jameel">Dr. Jameel Ahamed</option>
                    <option value="Mohatesham">Mr. Mohatesham Pasha Quadri</option>
                    <option value="Rashid">Mr. Mohammed Rashid</option>
                    <option value="Amir">Mr. Amir Khan</option>
                    <option value="Anjar">Mr. Anjar Ahsan</option>
                    <option value="Naiyar">Dr. Naiyar Iqbal</option>
                    <option value="Faheem">Dr. Mo Faheem</option>
                    <option value="Kamran">Mr. Kamran Siddique</option>
                    <option value="Islam">Mr. Mohammad Islam</option>
                    <option value="Ulfath">Ms. Syeda Ulfath Banu</option>
                </select>
                
                <label for="date">Choose Date:</label>
                <input type="date" id="date" name="date" required>
                
                <label for="time">Choose Time:</label>
                <input type="time" id="time" name="time" required>
    
    <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value="ADD" /></td></tr>
    <tr></tr>      
    </table></center>
    </form>
    	

    <div class="clear"></div>
    </div>

    </div>

    <div class="clear"></div>
    </div>
    <br/><br/><br/><br/><br/>

    <div style="clear: both; height: 12px;"></div>                  
    </div>
</body>
</html>
