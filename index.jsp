<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
    <title>Fecha y Hora</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: #f0f2f5;
            margin-top: 100px;
        }
        .reloj {
            font-size: 2em;
            color: #333;
        }
        .fecha {
            font-size: 1.2em;
            color: #555;
        }
        button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1em;
        }
    </style>
    <script>
        // Función para actualizar la hora del cliente en tiempo real
        function actualizarHora() {
            const ahora = new Date();
            const hora = ahora.toLocaleTimeString();
            document.getElementById("horaCliente").innerText = hora;
        }
        setInterval(actualizarHora, 1000); // Actualiza cada segundo
        window.onload = actualizarHora;
    </script>
</head>
<body>
    <h1>Ejemplo Interactivo JSP: Fecha y Hora</h1>

    <%-- Fecha y hora generadas por el servidor --%>
    <%
        Date ahora = new Date();
        SimpleDateFormat formatoFecha = new SimpleDateFormat("EEEE, d 'de' MMMM 'de' yyyy");
        SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm:ss");
    %>

    <div class="fecha">
        <strong>Fecha del servidor:</strong> <%= formatoFecha.format(ahora) %>
    </div>

    <div class="reloj">
        <strong>Hora del servidor:</strong> <%= formatoHora.format(ahora) %>
    </div>

    <hr>

    <div class="reloj">
        <strong>Hora del cliente (actualizada en tiempo real):</strong>
        <span id="horaCliente"></span>
    </div>

    <button onclick="location.reload()">Actualizar página (nueva hora del servidor)</button>
</body>
</html>
