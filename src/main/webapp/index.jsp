<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil - Gestion Utilisateurs</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #f5f5f5;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .menu a {
            display: block;
            padding: 15px;
            margin: 15px 0;
            background: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            transition: background 0.3s;
        }
        .menu a:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>🏠 Application JSTL</h1>
    <div class="menu">
        <a href="afficherUtilisateurs.jsp">📋 Liste des Utilisateurs</a>
        <a href="afficherDate.jsp">📅 Date et Heure</a>
    </div>
</div>
</body>
</html>