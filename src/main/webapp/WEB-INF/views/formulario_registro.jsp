<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/" var="urlInicio"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Formulario Registro</title>
		<script type="text/javascript">
			var urlInicio = "${urlInicio}";
		</script>
		<script type="text/javascript">
			function menu(opcion) {
				switch (opcion) {
					case 'inicio':
						document.form_registro.action = urlInicio;
						document.form_registro.method = "POST";
						document.form_registro.submit();
						break;
					default:
						break;
				}
			}
		</script>
	</head>
	<body>
		<form name="form_registro">
			FORMULARIO REGISTRO JSP
			<br/>
			<br/>
			<table>
				<tr>
					<td>Nombre(s):</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Ap Paterno:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Ap Materno:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Grado:</td>
					<td>
						<select></select>
					</td>
				</tr>
				<tr>
					<td>Cuerpo procedencia:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Ciudad:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Estado:</td>
					<td>
						<select></select>
					</td>
				</tr>
				<tr>
					<td>Delegaci&oacute;n:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Tel&eacute;fono:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Tel M&oacute;vil:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Fecha dep&oacute;sito:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Banco:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Comprobante pago:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>¿Hospedaje?:</td>
					<td>
						<input type="checkbox"/>
					</td>
				</tr>
				<tr>
					<td>Hotel:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>¿Acompa&ntilde;ante?:</td>
					<td>
						<input type="checkbox"/>
					</td>
				</tr>
				<tr>
					<td>Mesa trabajo:</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: right;">
						<input type="button" value="Enviar" onclick="menu('envia_formulario')">
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<input type="button" value="Regresar" onclick="menu('inicio')"/>
		</form>
	</body>
</html>