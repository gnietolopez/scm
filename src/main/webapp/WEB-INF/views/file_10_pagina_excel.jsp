<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/j_spring_security_logout" var="urlSalir" />
<c:url value="/private/admin/obtiene_registros/excel" var="urlDescargaExcel" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Obtiene Excel</title>
		<style type="text/css">
			#div_tabla_con_boton {
				width: 200px;
				background: transparent; /* green; */
				margin-left: auto;
				margin-right: auto;
			}
		</style>
		<script type="text/javascript">
			var urlSalir = "${urlSalir}";
			var urlDescargaExcel = "${urlDescargaExcel}";
		</script>
		<script type="text/javascript">
			function menu(option) {
				switch (option) {
					case 'salir':
						document.form_obtiene_excel.action = urlSalir;
						document.form_obtiene_excel.method = "POST";
						document.form_obtiene_excel.submit();
						break;
					case 'obtiene_excel':
						document.form_obtiene_excel.action = urlDescargaExcel;
						document.form_obtiene_excel.method = "POST";
						document.form_obtiene_excel.submit();
						break;
				}
			}
		</script>
	</head>
	<body>
		<div id="div_tabla_con_boton">
			<form name="form_obtiene_excel">
				<table border="0" width="100%">
					<tr>
						<td width="50%" style="text-align: center;">
							<input type="button" value="Excel" onclick="menu('obtiene_excel')" style="width: 100%;"/>
						</td>
						<td width="50%" style="text-align: center;">
							<input 	type="button" value="Salir" onclick="menu('salir')" style="width: 100%;"/>
						</td>
					</tr>
				</table>
			</form>	
		</div>
	</body>
</html>