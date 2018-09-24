<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<div class="container">
	<H1>Welcome <bean:write name="username" scope="session" />  </H1>

	<table class="table table-striped">
		<caption>Your Todos are</caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Category</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<logic:iterate name="todoForm" property="todos" id="todo" >
			
				 <tr>
					<td><bean:write name="todo" property="name" /></td>
					<td><bean:write name="todo" property="category" /></td>
					<td>&nbsp;&nbsp;<a class="btn btn-danger"
						href="/delete-todo.do?todo=<bean:write name="todo" property="name" />&category=<bean:write name="todo" property="category" />">Delete</a></td>
				</tr> 
			</logic:iterate>
		</tbody>
	</table>
	<p>
		<%-- <font color="red">${errorMessage}</font> --%>
	</p>
	<a href="/add-todo.do">Add New Todo</a>
</div>
<%@ include file="../common/footer.jspf"%>