<%@page import="simple.dblogic"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 6]>
    <html class="ie5 oldie" lang="en"> 
    <script> 
        var ie=1;   
    </script>
<![endif]-->
<!--[if IE 6]> 
    <html class="ie6 oldie" lang="en"> 
    <script> 
        var ie=2;   
    </script>
<![endif]-->
<!--[if IE 7]>    
    <html class="ie7 oldie" lang="en">
    <script> 
        var ie=3;   
    </script> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">

    <title>NIT Srinagar</title>
    <!-- Styles -->
    <link href="./styles/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="./styles/main.css" rel="stylesheet" type="text/css" media="all" />

    <!-- End of Styles-->

    <!--Scripts -->
    <!--[if (lte IE 7)]>        
            <link href="./styles/ie.css" rel="stylesheet" type="text/css" media="all" />
        <![endif]-->
    <!--End of Scripts -->
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:200px;
	height:55px;
	z-index:102;
	left: 372px;
	top: 45px;
}
#apDiv2 {
	position:absolute;
	width:200px;
	height:54px;
	z-index:102;
	left: 1208px;
	top: 57px;
}
#apDiv3 {
	position:absolute;
	width:1095px;
	height:465px;
	z-index:102;
	left: 374px;
	top: 140px;
}
</style>
</head>

<body>
    <div id="banner">
        <div class="inline">
            <div id="logo" class="banner"></div>
            <h1 class="banner">National Institute of Technology, Srinagar</h1>
        </div>
    </div>
    <div id="nav" class="shadow">
        <ul>
            <li class="dragShadow">
                <a href="#"><i class="fa fa-home"></i> Home</a>
            </li>
            <li class="have dragShadow">
                <a href="./academics/"><i class="fa fa-book"></i> Academics</a>
                <div>
                    <ul>
                        <li>
                            <a href="./academics/">
                                <div>Fee Structure</div>
                            </a>
                        </li>
                        <li>
                            <a href="./academics/admissions.htm">
                                <div>Admissions</div>
                            </a>
                        </li>
                        <li>
                            <a href="./academics/examination.htm">
                                <div>Examinations</div>
                            </a>
                        </li>
                        <li>
                            <a href="./academics/calender_13.pdf">
                                <div>Calender</div>
                            </a>
                        </li>
                        <li>
                            <a href="./academics/notices.htm">
                                <div>Notices</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="have dragShadow">
                <a href="./departments/"><i class="fa fa-th"></i> Departments</a>
                <div>
                    <ul>
                        <li>
                            <a href="./chemical/">
                                <div class='nav_i cml'></div>
                                <div>Chemical Engineering</div>
                            </a>
                        </li>
                        <li>
                            <a href="./civil/">
                                <div class='nav_i cvl'></div>
                                <div>Civil Engineering</div>
                            </a>
                        </li>
                        <li>
                            <a href="./cse/">
                                <div class='nav_i cse'></div>
                                <div>Computer Science Engineering</div>
                            </a>
                        </li>
                        <li>
                            <a href="./electrical/">
                                <div class='nav_i ele'></div>
                                <div>Electrical Engineering</div>
                            </a>
                        </li>
                        <li>
                            <a href="./electronics/">
                                <div class='nav_i enc'></div>
                                <div>Electronics &amp; Communication Engineering</div>
                            </a>
                        </li>
                        <li>
                            <a href="./it/">
                                <div class='nav_i it'></div>
                                <div>Information Technology</div>
                            </a>
                        </li>
                        <li>
                            <a href="./departments/meche/">
                                <div class='nav_i mch'></div>
                                <div>Mechnanical Engineering</div>
                            </a>
                        </li>
                        <li>
                            <a href="./metallurgy/">
                                <div class='nav_i met'></div>
                                <div>Metalurgical &amp; Materials Engineering</div>
                            </a>
                        </li>
                        <li>
                            <a href="./Chemistry/">
                                <div class='nav_i chm'></div>
                                <div>Chemistry</div>
                            </a>
                        </li>
                        <li>
                            <a href="./Physics/">
                                <div class='nav_i phy'></div>
                                <div>Physics</div>
                            </a>
                        </li>
                        <li>
                            <a href="./Maths/">
                                <div class='nav_i mth'></div>
                                <div>Maths</div>
                            </a>
                        </li>
                        <li>
                            <a href="./HSS/">
                                <div class='nav_i hss'></div>
                                <div>HSS</div>
                            </a>
                        </li>
                        <li>
                            <a href="./rfc.htm">
                                <div class='nav_i crf'></div>
                                <div>Centeral Research Facility</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="have dragShadow">
                <a href="./administration/"><i class="fa fa-calendar"></i> Administration</a>
                <div>
                    <ul>
                        <li>
                            <a href="./administration/">
                                <div>Director</div>
                            </a>
                        </li>
                        <li>
                            <a href="./administration/deans.htm">
                                <div>Deans</div>
                            </a>
                        </li>
                        <li>
                            <a href="./administration/bog.pdf">
                                <div>Board of Governers</div>
                            </a>
                        </li>
                        <li>
                            <a href="./administration/senate.pdf">
                                <div>Senate</div>
                            </a>
                        </li>
                        <li>
                            <a href="./administration/off_admin.htm">
                                <div>Office Administration</div>
                            </a>
                        </li>
                        <li>
                            <a href="./administration/wc.pdf">
                                <div>Work Committee</div>
                            </a>
                        </li>
                        <li>
                            <a href="./administration/fc.pdf">
                                <div>Finance Committe</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="have dragShadow">
                <a href="./t&p/"><i class="fa fa-inr"></i> Placements</a>
                <div>
                    <ul>
                        <li>
                            <a href="./t&p/">
                                <div>About Department</div>
                            </a>
                        </li>
                        <li>
                            <a href="./t&p/invitation.htm">
                                <div>Invitation</div>
                            </a>
                        </li>
                        <li>
                            <a href="./t&p/placements.htm">
                                <div>Placement Record</div>
                            </a>
                        </li>
                        <li>
                            <a href="./t&p/getting_here.htm">
                                <div>Getting Here</div>
                            </a>
                        </li>
                        <li>
                            <a href="./t&p/facilities.htm">
                                <div>Facilities</div>
                            </a>
                        </li>
                        <li>
                            <a href="./t&p/prev.htm">
                                <div>Previous Recruiters</div>
                            </a>
                        </li>
                        <li>
                            <a href="./t&p/contact_us.htm">
                                <div>Contact Us</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="have dragShadow">
                <a href="#"><i class="fa fa-cutlery"></i> Services</a>
                <div>
                    <ul>
                        <li>
                            <a href="./library/">
                                <div>Library</div>
                            </a>
                        </li>
                        <li>
                            <a href="./facilities.html">
                                <div>Facilities</div>
                            </a>
                        </li>
                        <!--<li><a href="./cpunit.html"><div>Centeral Purchase Unit</div></a></li>-->
                        <li>
                            <a href="./hostels/">
                                <div>Hostels</div>
                            </a>
                        </li>
                        <li>
                            <a href="./hostels/mess.htm">
                                <div>Messes</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
<div id="wrapper">
 <div id="tooplate_mid_wrapper">
    	<div id="tooplate_mid_home"> 
          <div class="cleaner"></div>
         
          <%! public static String id; %>
          <%
			if(request.getParameter("radios") != null) {
            if(request.getParameter("radios").equals("radio1")) {
                id="mech";
            }
            /*else {
                out.println("Radio button 1 was not selected.<BR>");
            }*/
            if(request.getParameter("radios").equals("radio2")) {
            	id="ele";
            }
           /* else {
                out.println("Radio button 2 was not selected.<BR>");
            }*/
            if(request.getParameter("radios").equals("radio3")) {
            	id="cse";
            }
           /* else {
                out.println("Radio button 3 was not selected.<BR>");
            }*/
            if(request.getParameter("radios").equals("radio4")) {
            	id="it";
            }
            if(request.getParameter("radios").equals("radio5")) {
            	id="ec";
            }
            if(request.getParameter("radios").equals("radio6")) {
            	id="chem";
            }
            if(request.getParameter("radios").equals("radio7")) {
            	id="meta";
            }
        }%>
   <div >
   <h1><center>Library & Resource Center</center></h1>
      <div id="apDiv1"><a href="#"> <img src="img/student_login.png"></a></div>
      <div id="apDiv2"><a href="mybooks.jsp"><img src="img/MyBooks.png"></a></div>
      <div id="apDiv3">
      
      <Table border="1">
		<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;ID&nbsp;&nbsp;&nbsp;&nbsp;    </td>
				<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     Name Of Book &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     </td>
				<td>  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   Course  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   </td>
				<td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      </td>
				<td>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Author  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    </td>
				</tr>
			
			<% try {
			
			
			ResultSet rs=dblogic.get_books(id);
			while(rs.next()){
				String i=rs.getString(1);%>
				<tr>
						<td><center><%out.print(i); %></center></td>
						<td><center><%=rs.getString(2) %></center></td>
						<td><center><%=rs.getString(3) %></center></td>
						<td><center><%=rs.getString(4) %></center></td>
						<td><center><%=rs.getString(5) %></center></td>
						</tr>
			<% } %>
			</Table>
			
		<%} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			%>
			
      </div>
   </div></div></div></div>
      
    <div id="footer">
                    <ul class="f_167">
                        <li><a href="./">NITsri Home</a></li>                
                        <li><a href="./chemical/">Chem. Engg. Home</a></li>
                        <li><a href="./civil/">Civil Engg. Home</a></li>
                        <li><a href="./cse/">CSE Home</a></li>
                        <li><a href="./electrical/">Electrical Home</a></li>
                        <li><a href="./electronics/">E&amp;C Home</a></li>
                        <li><a href="./it/">IT Home</a></li>
                    </ul>
                    <ul class="f_167">
                        <li><a href="./departments/meche/">MechE Home</a></li>                
                        <li><a href="./metallurgy/">Meta. Engg. Home</a></li>
                        <li><a href="./Chemistry/">Chemistry Home</a></li>
                        <li><a href="./Physics/">Physics Home</a></li>
                        <li><a href="./Maths/">Mathematics Home</a></li>
                        <li><a href="./HSS/">HSS Home</a></li>
                        <li><a href="./rfc.htm">Research Home</a></li>
                    </ul>
                    <ul class="f_167">
                        <li><a href="http://techvaganza.org">Techvaganza 2013</a></li>                
                        <li><a href="./academics/admissions.htm">M.Tech Admissions</a></li>
                        <li><a href="./academics/phd_2013/phd_13b.htm">Ph.D Admissions</a></li>
                        <li><a href="./rti.pdf">RTI</a></li>
                        <li><a href="./tenderS.htm">Tenders</a></li>
                        <li><a href="./hostels/">Hostels</a></li>
                        <li><a href="./g_house.htm">Guest House</a></li>
                    </ul>
                    <ul class="f_167">
                        <li><a href="./reports.htm">Annual Reports</a></li>                
                        <li><a href="./Minutes/BOG_83.pdf">BOG Minutes</a></li>
                        <li><a href="./Minutes/FC_12Nov12.pdf">FC Minutes</a></li>
                        <li><a href="./Minutes/bwc_83.pdf">BWC Minutes</a></li>
                        <li><a href="./administration/Min_Senate_11.pdf">Senate Minutes</a></li>
                    </ul>
                    <div class="clear"></div>
                    <div style="margin-top:20px;">                        
                        <span style="float:left"><a href="http://mail.nitsri.net/">Web Mail</a> | <a href="http://www.nitsri.net/contact_us.htm">Contact Us</a> | <a href="mailto:webadmin@nitsri.net">Email Us</a></span>
                        <span style="float:right;">&copy; National Institute of Technology, Srinagar, J&amp;K, India</span>
                    </div>
                </div>
    <!-- Main Script -->
    <script type="text/javascript" src="js/main.js"></script>
</body>

</html>
