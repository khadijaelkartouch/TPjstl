<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.sql" prefix="sql" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Liste des Utilisateurs</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 1000px;
            margin: 30px auto;
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .alert {
            padding: 15px;
            background-color: #f44336;
            color: white;
            margin: 20px 0;
            border-radius: 5px;
            text-align: center;
        }
        .info {
            text-align: center;
            color: #666;
            margin: 20px 0;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .back-link:hover {
            background: #5a6268;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>📋 Liste des Utilisateurs</h1>

    <!-- Connexion à la base de données -->
    <sql:setDataSource
            var="db"
            driver="com.mysql.cj.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/TestDB"
            user="root"
            password=""/>

    <!-- Requête SQL -->
    <sql:query var="resultat" dataSource="${db}">
        SELECT id, nom, prenom, email, date_inscription FROM utilisateurs
    </sql:query>

    <!-- Affichage conditionnel -->
    <c:choose>
        <c:when test="${resultat.rowCount == 0}">
            <div class="alert">
                ⚠️ Aucun utilisateur trouvé dans la base de données.
            </div>
        </c:when>
        <c:otherwise>
            <p class="info">Nombre d'utilisateurs : <strong>${resultat.rowCount}</strong></p>

            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Email</th>
                    <th>Date d'inscription</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${resultat.rows}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.nom}</td>
                        <td>${user.prenom}</td>
                        <td>${user.email}</td>
                        <td>${user.date_inscription}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:otherwise>
    </c:choose>

    <a href="index.jsp" class="back-link">← Retour à l'accueil</a>
</div>
</body>
</html>