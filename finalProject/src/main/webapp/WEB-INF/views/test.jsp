<%@page import="com.itbank.mvcproject.ReservationDTO"%>
<%@page import="java.util.ArrayList"%>

	<%
		ArrayList list = (ArrayList)request.getAttribute("list");
		ReservationDTO dto = null;
		for(int i = 0; i < list.size(); i++) {
			dto = (ReservationDTO) list.get(i);
	%>
<%=dto.getComplete()%>
<%=dto.getName()%>
	<%
		}
	%>
